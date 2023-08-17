import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/components/custom_credit_card.dart';
import 'package:stb_direct/components/drawer.dart';
import 'package:stb_direct/components/transactions_section.dart';
import 'package:stb_direct/components/navigation_tabs.dart';
import 'package:stb_direct/constants/navigation_links.dart';
import 'package:stb_direct/constants/transactions_data.dart';
import 'package:stb_direct/styles/colors.dart';

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
              height: 220,
              decoration: BoxDecoration(
                color: navyTwo,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 70, 24, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
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
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back !',
                              style: TextStyle(
                                color: greyLight,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Nidhal Chelhi',
                              style: TextStyle(
                                color: white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FeatherIcons.bell,
                                  size: 26, color: white),
                            ),
                            IconButton(
                              onPressed: () {
                                if (_scaffoldKey.currentState!.isDrawerOpen) {
                                  _scaffoldKey.currentState!.closeDrawer();
                                } else {
                                  _scaffoldKey.currentState!.openDrawer();
                                }
                              },
                              icon: Icon(FeatherIcons.menu,
                                  size: 26, color: white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -60.0, 0.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        creditCard(context, blue, '12/2028', '0169'),
                        const SizedBox(height: 30),
                        Text(
                          'Navigation',
                          style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 12),
                        navigationsTabs(navLinks, context),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Recent Activities',
                          style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        transactionsSection(transactionsData.sublist(0, 4))
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
