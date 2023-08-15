import 'package:flutter/material.dart';
import 'package:stb_direct/styles/colors.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: const Size(double.infinity, 55),
  primary: purple,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);

final ButtonStyle btnSecondary = ElevatedButton.styleFrom(
  minimumSize: const Size(double.infinity, 55),
  primary: white,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);
