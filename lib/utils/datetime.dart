import 'package:flutter/material.dart';

int parseTime(TimeOfDay time) {
  // Represent the hours and minutes as a single integer
  // For example, 14:30 becomes 1430
  return time.hour * 100 + time.minute;
}
