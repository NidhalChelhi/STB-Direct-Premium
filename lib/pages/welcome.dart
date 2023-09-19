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
      backgroundColor: Colors.transparent,
      drawer: drawer(context),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 70, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          icon: Icon(FeatherIcons.bell, size: 26, color: white),
                        ),
                        IconButton(
                          onPressed: () {
                            if (_scaffoldKey.currentState!.isDrawerOpen) {
                              _scaffoldKey.currentState!.closeDrawer();
                            } else {
                              _scaffoldKey.currentState!.openDrawer();
                            }
                          },
                          icon: Icon(FeatherIcons.menu, size: 26, color: white),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                creditCard(context, blue, '12/2028', '0169'),
                const SizedBox(height: 30),
                Text(
                  'Navigation',
                  style: TextStyle(
                      color: white, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
                navigationsTabs(navLinks, context),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Recent Activities',
                  style: TextStyle(
                      color: white, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                transactionsSection(transactionsData.sublist(0, 4)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
