import 'package:flutter/material.dart';

class HomeWorkouts {
  final int id;
  final String title;
  final Color backColor;

  HomeWorkouts({
    required this.id,
    required this.title,
    this.backColor = Colors.white,
  });
}
