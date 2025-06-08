import 'package:flutter/material.dart';
import 'models.dart';

class GeneralInfoStep extends StatelessWidget {
  final NewClub newClub;
  final void Function(NewClub) onChange;

  const GeneralInfoStep({
    super.key,
    required this.newClub,
    required this.onChange,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/new_club_background.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              TextFormField(
                initialValue: newClub.name,
                decoration: InputDecoration(labelText: 'Име на клуба'),
                onChanged: (value) {
                  newClub.name = value;
                  onChange(newClub);
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                initialValue: newClub.address,
                decoration: InputDecoration(labelText: 'Адрес'),
                onChanged: (value) {
                  newClub.address = value;
                  onChange(newClub);
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                initialValue: newClub.city,
                decoration: InputDecoration(labelText: 'Град'),
                onChanged: (value) {
                  newClub.city = value;
                  onChange(newClub);
                },
              ),
              SizedBox(height: 20),
              Text(
                "Работно Време",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 12),
              Row(
                spacing: 16,
                children: [
                  Text("Делнични дни:"),
                  Row(
                    spacing: 8,
                    children: [
                      TimePickerChip(
                        time: newClub.weekdayOpen,
                        onTimeSelected: (newTime) {
                          newClub.weekdayOpen = newTime;
                          onChange(newClub);
                        },
                      ),
                      Text("-"),
                      TimePickerChip(
                        time: newClub.weekdayClose,
                        onTimeSelected: (newTime) {
                          newClub.weekdayClose = newTime;
                          onChange(newClub);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Уикенд:"),
                  SizedBox(width: 64),
                  Row(
                    spacing: 8,
                    children: [
                      TimePickerChip(
                        time: newClub.weekendOpen,
                        onTimeSelected: (newTime) {
                          newClub.weekendOpen = newTime;
                          onChange(newClub);
                        },
                      ),
                      Text("-"),
                      TimePickerChip(
                        time: newClub.weekendClose,
                        onTimeSelected: (newTime) {
                          newClub.weekendClose = newTime;
                          onChange(newClub);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Минимална продължителност на игра",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 6),
              SegmentedButton<int>(
                segments: [
                  ButtonSegment(value: 30, label: Text("30 мин")),
                  ButtonSegment(value: 60, label: Text("60 мин")),
                  ButtonSegment(value: 90, label: Text("90 мин")),
                ],
                selected: {newClub.bookingInterval},
                onSelectionChanged: (Set<int> newSelection) {
                  if (newSelection.isNotEmpty) {
                      newClub.bookingInterval = newSelection.first;
                      onChange(newClub);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimePickerChip extends StatelessWidget {
  final TimeOfDay time;
  final void Function(TimeOfDay) onTimeSelected;

  const TimePickerChip({
    super.key,
    required this.time,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text('${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}'),
      onPressed: () async {
        final TimeOfDay? selected = await showTimePicker(
          context: context,
          initialTime: time,
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          },
        );

        if (selected != null) {
          onTimeSelected(selected);
        }
      },
    );
  }
}
