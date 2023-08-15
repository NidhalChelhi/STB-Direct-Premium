import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/models/transaction_model.dart';
import 'package:stb_direct/styles/colors.dart';

List<TransactionModel> transactionsData = [
  TransactionModel(
      tid: '2',
      icon: Icon(FeatherIcons.home, color: white),
      value: '1,500 TND',
      title: 'Rent',
      type: 'out'),
  TransactionModel(
      tid: '3',
      icon: Icon(FeatherIcons.home, color: white),
      value: '5000 TND',
      title: 'Deposit Cash',
      type: 'in'),
  TransactionModel(
      tid: '4',
      icon: Icon(FeatherIcons.box, color: white),
      value: '2,000',
      title: 'Something',
      type: 'out'),
  TransactionModel(
      tid: '1',
      icon: Icon(FeatherIcons.home, color: white),
      value: '450 TND',
      title: 'Car Wash',
      type: 'in'),
  TransactionModel(
      tid: '1',
      icon: Icon(FeatherIcons.anchor, color: white),
      value: '450 TND',
      title: 'Car Wash',
      type: 'out'),
  TransactionModel(
      tid: '1',
      icon: Icon(FeatherIcons.home, color: white),
      value: '450 TND',
      title: 'Car Wash',
      type: 'in'),
  TransactionModel(
      tid: '1',
      icon: Icon(FeatherIcons.camera, color: white),
      value: '450 TND',
      title: 'Car Wash',
      type: 'out'),
  TransactionModel(
      tid: '1',
      icon: Icon(FeatherIcons.home, color: white),
      value: '450 TND',
      title: 'Car Wash',
      type: 'out'),
];
