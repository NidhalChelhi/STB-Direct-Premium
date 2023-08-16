import 'package:flutter/material.dart';

class TransactionModel {
  final String tid;
  final String title;
  final String date;

  final String value;
  final Widget icon;
  final String type;

  TransactionModel({
    required this.tid,
    required this.title,
    required this.date,
    required this.value,
    required this.icon,
    required this.type,
  });
}
