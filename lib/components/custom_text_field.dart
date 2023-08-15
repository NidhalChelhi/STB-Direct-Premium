import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

ClipRect customTextField(String type) {
  return ClipRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4.0,
        sigmaY: 4.0,
      ),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: white.withOpacity(
            0.20,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          child: TextField(
            obscureText: type == 'Password' ? true : false,
            cursorColor: blue,
            style: inputStyle(white),
            decoration: InputDecoration.collapsed(
              hintText: type,
              hintStyle: inputStyle(white),
            ),
          ),
        ),
      ),
    ),
  );
}
