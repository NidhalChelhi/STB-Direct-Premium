import 'package:flutter/material.dart';
import 'package:stb_direct/components/custom_credit_card.dart';
import 'package:stb_direct/components/drawer.dart';
import 'package:stb_direct/components/transactions_section.dart';
import 'package:stb_direct/components/navigation_tabs.dart';
import 'package:stb_direct/constants/navigation_links.dart';
import 'package:stb_direct/constants/transactions_data.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: navy,
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton(
              //   icon: Icon(
              //     FeatherIcons.menu,
              //     color: white,
              //     size: 28,
              //   ),
              //   onPressed: () {
              //     if (_scaffoldKey.currentState != null) {
              //       _scaffoldKey.currentState!.openDrawer();
              //     }
              //   },
              // ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(height: 30),
              // Credit Card
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
      ),
    );
  }
}
