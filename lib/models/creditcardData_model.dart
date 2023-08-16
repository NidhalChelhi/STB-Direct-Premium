import 'package:flutter/material.dart';

class CreditCardData {
  CreditCardData(
      {required this.backgroundColor,
      required this.expDate,
      required this.cardNumber});
  final Color backgroundColor;
  final String expDate;
  final String cardNumber;
}
