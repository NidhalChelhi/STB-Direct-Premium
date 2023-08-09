import 'package:flutter/material.dart';
import 'package:stb_direct/pages/browse.dart';
import 'package:stb_direct/pages/login.dart';
import 'package:stb_direct/pages/register.dart';
import 'package:stb_direct/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STB Direct Premium',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const SplashScreen(), // Set splash screen as the home
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const BrowsePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
