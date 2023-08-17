import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stb_direct/styles/colors.dart';

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
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        color: navy,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_stb_cropped.png',
              width: MediaQuery.sizeOf(context).width / 2,
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    color: white, fontSize: 32, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  const TextSpan(text: 'STB Direct'),
                  TextSpan(
                      text: ' Premium',
                      style: TextStyle(
                          color: blue,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
