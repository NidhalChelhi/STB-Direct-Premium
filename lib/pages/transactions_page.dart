import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/components/navigation_tabs.dart';
import 'package:stb_direct/components/transactions_section.dart';
import 'package:stb_direct/constants/navigation_links.dart';
import 'package:stb_direct/constants/transactions_data.dart';
import 'package:stb_direct/styles/colors.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: navy,
        centerTitle: true,
        title: Text(
          'Transfers',
          style: TextStyle(color: white, fontSize: 24),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FeatherIcons.chevronLeft,
              color: white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontSize: 18,
                          color: white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '50,000.00 TND',
                      style: TextStyle(
                          fontSize: 32,
                          color: white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
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
                      child: navigationsTabs(transferLinks, context)),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All Transactions',
                          style: TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.w400),
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
      ),
    );
  }
}
