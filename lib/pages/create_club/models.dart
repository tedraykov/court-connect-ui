import 'package:flutter/material.dart';

class NewFacility {
  String name;
  String description;
  String sport;
  String type;
  int capacity;
  String imageUrl;
  IconData icon;

  NewFacility({
    required this.name,
    required this.description,
    required this.sport,
    required this.type,
    this.capacity = 0,
    required this.imageUrl,
    required this.icon,
  });
}

class NewClub {
  String name = '';
  String address = '';
  String city = '';
  TimeOfDay weekdayOpen = TimeOfDay(hour: 8, minute: 0);
  TimeOfDay weekdayClose = TimeOfDay(hour: 20, minute: 0);
  TimeOfDay weekendOpen = TimeOfDay(hour: 8, minute: 0);
  TimeOfDay weekendClose = TimeOfDay(hour: 20, minute: 0);
  int bookingInterval = 60;
  List<NewFacility> facilities = [];
}

class WizardStepState {
  int id;
  bool isValid;

  WizardStepState({required this.id, required this.isValid});
}

class Wizard {
  int currentStep = 0;
  Map<int, WizardStepState> steps = {
    // Define the steps of the wizard with their initial states
    0: WizardStepState(id: 0, isValid: false), // General Info
    1: WizardStepState(id: 1, isValid: false), // Add Facilities
  };
}
