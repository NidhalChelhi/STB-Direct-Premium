import 'package:flutter/material.dart';
import 'package:stb_direct/models/transaction_model.dart';
import 'package:stb_direct/styles/colors.dart';

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
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              transaction.date,
              style: TextStyle(
                color: greyLight,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          transaction.value,
          style: transaction.type == 'out'
              ? TextStyle(
                  color: greyLight,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )
              : TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ],
    ),
  );
}
