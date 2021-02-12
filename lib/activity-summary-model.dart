import 'package:flutter/material.dart';

class ActivitySummaryModel {
  final String avatar;
  final String name;
  final String date;
  final String title;
  final String distance;
  final String pace;
  final String time;

  ActivitySummaryModel({
    @required this.avatar,
    @required this.name,
    @required this.date,
    @required this.title,
    @required this.distance,
    @required this.pace,
    @required this.time,
  });
}
