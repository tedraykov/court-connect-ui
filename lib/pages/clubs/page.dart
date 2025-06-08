import 'package:court_connect_app/pages/clubs/filter_wizard.dart';
import 'package:court_connect_app/pages/clubs/models.dart';
import 'package:flutter/material.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({super.key});

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  ClubFilters filters = ClubFilters();

  @override
  void initState() {
    super.initState();

    // Defer execution until the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_filtersSet()) {
        return;
      }

      _openJourneySheet(context);
    });
  }

  bool _filtersSet() {
    return filters.sport != null &&
        filters.city != null &&
        filters.dates.isNotEmpty &&
        filters.times.isNotEmpty;
  }

  void _openJourneySheet(BuildContext context) async {
    final result = await showModalBottomSheet<ClubFilters>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => const FilterWizard(),
    );
    if (result != null) {
      setState(() {
        filters = result;
      });
    }
  }

  // //  Fetch clubs based on filters
  // void _fetchClubs() {
  // }

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
                        _openJourneySheet(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'Избери филтри, за да намериш клубове',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
