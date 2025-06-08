import 'package:court_connect_app/api/queries/clubs.graphql.dart';
import 'package:court_connect_app/api/schema.graphql.dart';
import 'package:court_connect_app/pages/clubs/filter_wizard.dart';
import 'package:court_connect_app/pages/clubs/models.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({super.key});

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  ClubFilters filters = ClubFilters();
  List<Query$clubs$clubs>? clubs;
  bool loading = false;

  @override
  void initState() {
    super.initState();

    // Defer execution until the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('ClubsPage initialized with filters: $filters');
      if (filtersSet()) {
        fetchClubs();
        return;
      }

      openJourneySheet(context);
    });
  }

  bool filtersSet() {
    return filters.sport != null &&
        filters.city != null &&
        filters.dates.isNotEmpty &&
        filters.times.isNotEmpty;
  }

  void openJourneySheet(BuildContext context) async {
    final result = await showModalBottomSheet<ClubFilters>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => const FilterWizard(),
    );
    if (result != null) {
      setState(() {
        filters = result;
        fetchClubs();
      });
    }
  }

  Future<void> fetchClubs() async {
    final client = GraphQLProvider.of(context).value;

    final clubFilters = Input$ClubFilterInput(
      sport: filters.sport,
      city: filters.city,
    );

    setState(() {
      loading = true;
    });

    final result = await client.query$clubs(
      Options$Query$clubs(variables: Variables$Query$clubs(input: clubFilters)),
    );

    setState(() {
      if (result.hasException) {
        print(result.exception.toString());
        return;
      }
      clubs = result.parsedData?.clubs ?? [];

      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // Make the txt white
              title: const Text(
                'Клубове',
                style: TextStyle(color: Colors.white),
              ),
              background: Hero(
                tag: 'find-club',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/courts.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    ActionChip(
                      avatar: Icon(Icons.arrow_drop_down),
                      label: Text('Спорт | Град | Дата'),
                      onPressed: () {
                        openJourneySheet(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              // Display clubs if available here
              if (loading)
                const Center(child: CircularProgressIndicator())
              else if (clubs == null)
                Center(
                  child: Text(
                    'Избери филтри, за да намериш клубове',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              else if (clubs!.isEmpty)
                Center(
                  child: Text(
                    'Няма намерени клубове по зададените филтри.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              else
                ...clubs!.map((club) => ClubListItem(club: club)),
            ]),
          ),
        ],
      ),
    );
  }
}

class ClubListItem extends StatelessWidget {
  final Query$clubs$clubs club;

  const ClubListItem({super.key, required this.club});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/courts.jpeg",
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                club.name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
