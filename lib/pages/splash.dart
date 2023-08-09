// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:stb_direct/pages/login.dart'; // Import your login page
import 'package:stb_direct/pages/browse.dart';
import 'package:stb_direct/styles/color.dart';
import 'package:stb_direct/styles/typo.dart'; // Import your browse page

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const BrowsePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: gradient),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_stb_cropped.png',
              width: MediaQuery.sizeOf(context).width / 1.5,
            ),
            const SizedBox(height: 48),
            Text(
              "STB DIRECT   Premium",
              style: splashtitle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
