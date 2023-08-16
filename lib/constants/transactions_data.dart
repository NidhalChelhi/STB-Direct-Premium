import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/models/transaction_model.dart';
import 'package:stb_direct/styles/colors.dart';

List<TransactionModel> transactionsData = [
  TransactionModel(
      tid: '1',
      icon: Icon(
        FeatherIcons.home,
        color: white,
        size: 18,
      ),
      value: '1,200 TND',
      title: 'Rent',
      date: '27 May 2020',
      type: 'out'),
  TransactionModel(
      tid: '2',
      icon: Icon(FeatherIcons.arrowDown, color: white, size: 18),
      value: '5,000 TND',
      title: 'Deposit Cash',
      date: '27 May 2020',
      type: 'in'),
  TransactionModel(
      tid: '3',
      icon: Icon(FeatherIcons.shoppingCart, color: white, size: 18),
      value: '300 TND',
      title: 'Shopping',
      date: '27 May 2020',
      type: 'out'),
  TransactionModel(
      tid: '4',
      icon: Icon(FeatherIcons.film, color: white, size: 18),
      value: '100 TND',
      title: 'Cinema Date',
      date: '27 May 2020',
      type: 'out'),
  TransactionModel(
      tid: '5',
      icon: Icon(FeatherIcons.arrowDown, color: white, size: 18),
      value: '1,500 TND',
      title: 'Deposit Cash',
      date: '27 May 2020',
      type: 'in'),
  TransactionModel(
      tid: '6',
      icon: Icon(FeatherIcons.truck, color: white, size: 18),
      value: '20 TND',
      title: 'Car Wash',
      date: '27 May 2020',
      type: 'out'),
];
