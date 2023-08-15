import 'package:flutter/material.dart';
import 'package:stb_direct/components/custom_credit_card.dart';
import 'package:stb_direct/components/drawer.dart';
import 'package:stb_direct/components/transactions_section.dart';
import 'package:stb_direct/components/navigation_tabs.dart';
import 'package:stb_direct/constants/navigation_links.dart';
import 'package:stb_direct/constants/transactions_data.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: navy,
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 270,
              decoration: BoxDecoration(
                color: navyTwo,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 60, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Malek',
                          style: h1,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Welcome Back !',
                          style: h3,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/virements');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: const DecorationImage(
                            image: AssetImage('assets/avatar.jpg'),
                            alignment: Alignment.centerRight,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -80.0, 0.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        creditCard(context),
                        const SizedBox(height: 30),
                        Text(
                          'Navigation',
                          style: subHeader(white),
                        ),
                        const SizedBox(height: 12),
                        navigationsTabs(navLinks, context),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Dernières Transactions',
                          style: subHeader(white),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        transactionsSection(transactionsData.sublist(0, 3))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
