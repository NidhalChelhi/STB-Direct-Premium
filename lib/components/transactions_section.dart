import 'package:flutter/material.dart';
import 'package:stb_direct/models/transaction_model.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

Column transactionsSection(List<TransactionModel> data) {
  return Column(
    children: List.generate(data.length, (index) {
      TransactionModel transaction = data[index];
      return transactionCard(transaction);
    }),
  );
}

Container transactionCard(TransactionModel transaction) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: navyTwo,
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
              transaction.title,
              style: subHeader(white),
            ),
            const SizedBox(height: 4),
            Text(
              transaction.date,
              style: label2(),
            ),
          ],
        ),
        const Spacer(),
        Text(
          transaction.value,
          style: transaction.type == 'out'
              ? subHeader(greyLight)
              : subHeader(white),
        ),
      ],
    ),
  );
}
