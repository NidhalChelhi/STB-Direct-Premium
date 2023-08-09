import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/models/transaction_model.dart';
import 'package:stb_direct/styles/color.dart';
import 'package:stb_direct/styles/typo.dart';

Column lastTransactions(List<TransactionModel> data) {
  return Column(
    children: List.generate(data.length, (index) {
      TransactionModel transaction = data[index];
      return transactionCard(transaction);
    }),
  );
}

Column transactionCard(TransactionModel transaction) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: transaction.type == 'out' ? pink : blue,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: transaction.icon,
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.value,
                style: subHeader,
              ),
              const SizedBox(height: 4),
              Text(
                transaction.title,
                style: label2,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(FeatherIcons.arrowRight, color: grey, size: 24),
          ),
        ],
      ),
      const SizedBox(
        height: 14,
      )
    ],
  );
}
