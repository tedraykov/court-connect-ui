import 'package:flutter/material.dart';

import 'models.dart';

final List<NewFacility> facilitityTemplates = [
  NewFacility(
    name: '1',
    type: 'Корт',
    sport: 'Тенис',
    description: 'Стандартен тенис корт.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1qodvOVZrcCEkeOu2wY7JTunYhcCsCh69mA&s',
    icon: Icons.sports_tennis,
  ),
  NewFacility(
    name: '2',
    type: 'Корт',
    sport: 'Падел',
    description: 'Стандартен падел корт с размери 20x10 метра',
    imageUrl:
        'https://artificialgrasscentral.co.uk/cdn/shop/files/PHOTO-2024-09-16-08-22-25.jpg?v=1726575127&width=600',
    icon: Icons.sports_tennis_sharp,
  ),
];

class AddFacilitiesStep extends StatelessWidget {
  final NewClub newClub;
  final void Function(NewClub) onChange;

  const AddFacilitiesStep({
    super.key,
    required this.newClub,
    required this.onChange,
  });
  void addFacility(NewFacility facility) {
    facility.name = (newClub.facilities.length + 1).toString();
    newClub.facilities.add(facility);
    onChange(newClub);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Добавяне на съоръжения",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 16),
          Text(
            "Тук можете да добавите индивидуалните съоръжения във вашия клуб като тенис кортове, зали за фитнес и други.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 20),
          ...(newClub.facilities.isNotEmpty
              ? newClub.facilities.map((facility) {
                  return NewFacilityCard(
                    facility: facility,
                    onDeleteFacility: (facility) {
                      newClub.facilities.remove(facility);
                      onChange(newClub);
                    },
                  );
                }).toList()
              : [
                  Text(
                    "Няма добавени съоръжения",
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
          SizedBox(height: 20),
          Text(
            "Добави съоръжение",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 8),
          LayoutBuilder(
            builder: (context, constraints) {
              // Set breakpoints for number of items per row
              int crossAxisCount = 2;
              if (constraints.maxWidth > 1200) {
                crossAxisCount = 4;
              } else if (constraints.maxWidth > 600) {
                crossAxisCount = 3;
              }
              return GridView.count(
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                childAspectRatio: 3 / 4,

                physics: NeverScrollableScrollPhysics(),
                children: facilitityTemplates.map((facility) {
                  return AddFacilityCard(
                    facility: facility,
                    onNewFacility: addFacility,
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class NewFacilityCard extends StatelessWidget {
  final NewFacility facility;
  final void Function(NewFacility) onDeleteFacility;

  const NewFacilityCard({
    super.key,
    required this.facility,
    required this.onDeleteFacility,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(facility.icon, color: Colors.grey, size: 32),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${facility.type} ${facility.name}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  facility.sport,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: IconButton(
              icon: Icon(Icons.delete, color: Theme.of(context).primaryColor),
              onPressed: () => onDeleteFacility(facility),
              tooltip: "Изтрий съоръжението",
            ),
          ),
        ],
      ),
    );
  }
}

class AddFacilityCard extends StatelessWidget {
  final NewFacility facility;
  final void Function(NewFacility) onNewFacility;

  const AddFacilityCard({
    super.key,
    required this.facility,
    required this.onNewFacility,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => {
          onNewFacility(
            NewFacility(
              name: facility.name,
              type: facility.type,
              sport: facility.sport,
              description: facility.description,
              imageUrl: facility.imageUrl,
              icon: facility.icon,
            ),
          ),
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  facility.imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -16,
                  left: 16,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(facility.icon, color: Colors.white, size: 24),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    "${facility.sport} - ${facility.type}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 4),
                  Text(
                    facility.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
