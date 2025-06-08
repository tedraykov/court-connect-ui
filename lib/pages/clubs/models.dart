import 'package:court_connect_app/api/schema.graphql.dart';
import 'package:flutter/material.dart';

class ClubFilters {
  Enum$Sport? sport;
  String? city;
  List<DateTime> dates;
  List<TimeOfDay> times;

  ClubFilters({
    this.sport,
    this.city,
    this.dates = const [],
    this.times = const [],
  });
}
