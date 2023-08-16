import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/models/navLink_model.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';
import 'dart:math' as math;

List<NavlinkModel> navLinks = [
  NavlinkModel(
    nid: '1',
    icon: Icon(FeatherIcons.send, color: white, size: 24),
    title: 'Transfer',
    route: '/virements',
  ),
  NavlinkModel(
    nid: '2',
    icon: Icon(FeatherIcons.creditCard, color: white, size: 24),
    title: 'Cards',
    route: '/cards',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.dollarSign, color: white, size: 24),
    title: 'Credit',
    route: '/welcome',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.pieChart, color: white, size: 24),
    title: 'Statistics',
    route: '/welcome',
  ),
];

List<NavlinkModel> transferLinks = [
  NavlinkModel(
    nid: '1',
    icon: Icon(FeatherIcons.send, color: red, size: 24),
    title: 'Send',
    route: '/virements',
  ),
  NavlinkModel(
    nid: '2',
    icon: Transform.rotate(
        angle: 180 * math.pi / 180,
        child: Icon(FeatherIcons.send, color: green, size: 24)),
    title: 'Receive',
    route: '/virements',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.uploadCloud, color: white, size: 24),
    title: 'Deposit',
    route: '/virements',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.shoppingCart, color: white, size: 24),
    title: 'Pay',
    route: '/virements',
  ),
];
