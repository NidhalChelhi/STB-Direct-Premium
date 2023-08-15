import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/components/transactions_section.dart';
import 'package:stb_direct/constants/transactions_data.dart';
import 'package:stb_direct/styles/typo.dart';
import 'package:stb_direct/styles/colors.dart';
import 'dart:math' as math;

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                color: navyTwo,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
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
                              'Malek',
                              style: subTitle2,
                            ),
                            Text(
                              'Med Malek Khattab',
                              style: headerWhite,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.popAndPushNamed(context, '/welcome');
                              },
                              icon: Icon(FeatherIcons.chevronLeft,
                                  size: 26, color: white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FeatherIcons.bell,
                                  size: 26, color: white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance',
                              style: subTitle2,
                            ),
                            Text(
                              '50,000 TND',
                              style: largePrimary,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: navyTwo,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FeatherIcons.send,
                              color: red,
                              size: 28,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Envoyer',
                              style: subHeader(white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: navyTwo,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.rotate(
                              angle: 180 * math.pi / 180,
                              child: Icon(
                                FeatherIcons.send,
                                color: green,
                                size: 28,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Recevoir',
                              style: subHeader(white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: navyTwo,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FeatherIcons.uploadCloud,
                              color: white,
                              size: 28,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Recharger',
                              style: subHeader(white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: navyTwo,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FeatherIcons.shoppingCart,
                              color: white,
                              size: 28,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Paiement',
                              style: subHeader(white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tous vos Virements',
                        style: subHeader(white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      transactionsSection(transactionsData),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
