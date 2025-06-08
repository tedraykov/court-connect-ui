import 'package:court_connect_app/api/schema.graphql.dart';
import 'package:flutter/material.dart';

import 'models.dart';

class SportFilter extends StatelessWidget {
  final Enum$Sport? sport;
  final ValueChanged<Enum$Sport?> onChanged;

  const SportFilter({super.key, required this.sport, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RadioListTile<Enum$Sport>(
          title: Text('Тенис'),
          value: Enum$Sport.TENNIS,
          groupValue: sport,
          onChanged: onChanged,
        ),
        RadioListTile<Enum$Sport>(
          title: Text('Падел'),
          value: Enum$Sport.PADEL,
          groupValue: sport,
          onChanged: onChanged,
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class CityFilter extends StatelessWidget {
  final String? city;
  final ValueChanged<String?> onChanged;
  final cities = [
    {"name": "София", "image": "assets/sofia.jpg"},
    {"name": "Пловдив", "image": "assets/plovdiv.webp"},
    {"name": "Варна", "image": "assets/varna.jpg"},
  ];
  final _controller = CarouselController();

  CityFilter({super.key, required this.city, required this.onChanged}) {
    _controller.animateToItem(
      cities.indexWhere((c) => c['name'] == city),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: CarouselView(
        controller: _controller,
        onTap: (int index) {
          _controller.animateToItem(index);
          onChanged(cities[index]['name']);
        },
        scrollDirection: Axis.horizontal,
        itemSnapping: true,
        // 2/3 of the screen width
        itemExtent: MediaQuery.of(context).size.width * 2 / 3,
        children: cities.map((cityData) {
          final isSelected = cityData['name'] == city;
          return Stack(
            children: [
              Image.asset(
                cityData['image']!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Text(
                  cityData['name']!,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: CircleAvatar(
                  backgroundColor: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.4),
                  child: isSelected
                      ? Icon(Icons.check, color: Colors.white)
                      : null,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class DatesFilter extends StatelessWidget {
  final DateTime? date;
  final ValueChanged<DateTime?> onChanged;

  const DatesFilter({super.key, required this.date, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text('Избери дата'),
          trailing: Icon(Icons.calendar_today),
          onTap: () async {
            final selectedDate = await showDateRangePicker(
              context: context,
              initialDateRange: DateTimeRange(
                start: DateTime.now(),
                end: DateTime.now().add(Duration(days: 1)),
              ),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 365)),
              selectableDayPredicate: (DateTime day, start, end) {
                // Disable weekends
                if (start != null && end == null) {
                  // If only start is selected, allow selection of the same day
                  return day.isBefore(start.add(Duration(days: 7)));
                }
                return true;

              },
            );
            if (selectedDate != null) {
              onChanged(selectedDate.start);
            }
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class FilterWizard extends StatefulWidget {
  const FilterWizard({super.key});

  @override
  State<FilterWizard> createState() => _FilterWizardState();
}

class _FilterWizardState extends State<FilterWizard> {
  final _filters = ClubFilters();

  int _currentPage = 0;

  void _next() {
    if (_currentPage < 1) {
      setState(() {
        _currentPage += 1;
      });
    } else {
      Navigator.of(context).pop(_filters);
    }
  }

  @override
  Widget build(BuildContext context) {
    final steps = [
      {
        "title": "Избери спорт",
        "content": SportFilter(
          sport: _filters.sport ?? Enum$Sport.TENNIS,
          onChanged: (Enum$Sport? value) {
            // Handle sport selection change
            // This can be used to update the filters in the parent widget
            setState(() {
              _filters.sport = value;
            });
          },
        ),
      },
      {
        "title": "Избери град",
        "content": CityFilter(
          city: _filters.city ?? "София",
          onChanged: (String? value) {
            // Handle city selection change
            setState(() {
              _filters.city = value;
            });
          },
        ),
      },
      // {
      //   "title": "Избери дата",
      //   "content": DatesFilter(
      //     date: _filters.dates.isNotEmpty ? _filters.dates.first : null,
      //     onChanged: (DateTime? value) {
      //       // Handle date selection change
      //       if (value != null) {
      //         setState(() {
      //           _filters.dates = [value];
      //         });
      //       }
      //     },
      //   ),
      // },
    ];

    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                _currentPage > 0
                    ? IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          setState(() {
                            _currentPage -= 1;
                          });
                        },
                      )
                    : SizedBox(height: 48, width: 48), // Space for back button
                Text(
                  steps[_currentPage]["title"] as String, // Cast to String
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              final inFromRight = Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation);

              return SlideTransition(
                position: inFromRight,
                child: FadeTransition(opacity: animation, child: child),
              );
            },
            child: KeyedSubtree(
              key: ValueKey(
                _currentPage,
              ), // Very important to trigger animation
              child: steps[_currentPage]["content"] as Widget, // Cast to Widget
            ),
          ),
          Divider(height: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 32),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(onPressed: _next, style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  Theme.of(context).textTheme.bodyLarge,
                ),
              ), child: Text("Напред"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
