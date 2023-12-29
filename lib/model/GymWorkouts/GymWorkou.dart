import 'package:flutter/material.dart';

class GymWorkouts {
  final int id;
  final String title;
  final Color backColor;

  GymWorkouts({
    required this.id,
    required this.title,
    this.backColor = Colors.white,
  });
}
