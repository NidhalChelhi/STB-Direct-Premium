import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/components/credit_card.dart';
import 'package:stb_direct/components/last_transactions.dart';
import 'package:stb_direct/components/navigation_tabs.dart';
import 'package:stb_direct/constants/navigation_links.dart';
import 'package:stb_direct/constants/transactions_data.dart';
import 'package:stb_direct/pages/splash.dart';
import 'package:stb_direct/styles/color.dart';
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
      drawer: Drawer(
        backgroundColor: navy,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: pink,
              ),
              child: Text(
                'Drawer Header',
                style: h3,
              ),
            ),
            ListTile(
              title: Text(
                'Login',
                style: h3,
              ),
              leading: Icon(
                FeatherIcons.logIn,
                color: white,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              title: Text(
                'Register',
                style: h3,
              ),
              leading: Icon(
                FeatherIcons.logOut,
                color: white,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            ListTile(
                title: Text(
                  'Splash',
                  style: h3,
                ),
                leading: Icon(
                  FeatherIcons.home,
                  color: white,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                  );
                }),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: gradient),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            // Main Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Drawer Button
                IconButton(
                  icon: const Icon(
                    FeatherIcons.menu,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {
                    if (_scaffoldKey.currentState != null) {
                      _scaffoldKey.currentState!.openDrawer();
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                // Welcome Message + Avatar
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
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.squarespace-cdn.com/content/v1/552403f5e4b00ed50628c8b9/1680543327453-UJE916WT8JJTWKF5172C/Headshot_Corporate_Photographer_Studio_Session_Business_LinkedIn_CV_Shooting_Professional_Portrait_Professionnel_Photography_Bruxelles_Brussels_Prix_Price_Best_Devis_Quote_Lillo_Mendola_136.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // Credit Card
                creditCard(),
                const SizedBox(height: 30),
                Text(
                  'Navigation',
                  style: subHeader,
                ),
                const SizedBox(height: 12),
                navigationsTabs(navLinks, MediaQuery.sizeOf(context).width),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Transactions',
                  style: subHeader,
                ),
                const SizedBox(
                  height: 12,
                ),
                lastTransactions(transactionsData)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
