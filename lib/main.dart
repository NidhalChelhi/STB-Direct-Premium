import 'package:flutter/material.dart';
import 'package:stb_direct/constants/creditcards_data.dart';
import 'package:stb_direct/pages/cards_page.dart';
import 'package:stb_direct/pages/login.dart';
import 'package:stb_direct/pages/register.dart';
import 'package:stb_direct/pages/splash.dart';
import 'package:stb_direct/pages/transactions_page.dart';
import 'package:stb_direct/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STB Direct',
      theme: ThemeData(useMaterial3: true, fontFamily: 'ReadexPro'),
      home: const SplashScreen(),
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/welcome': (context) => const WelcomePage(),
        '/register': (context) => const RegisterPage(),
        '/splash': (context) => const SplashScreen(),
        '/virements': (context) => const TransactionPage(),
        '/cards': (context) => CardsPage(cardsData: creditCardsData),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
