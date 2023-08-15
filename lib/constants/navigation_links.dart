import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/models/navLink_model.dart';
import 'package:stb_direct/styles/colors.dart';

List<NavlinkModel> navLinks = [
  NavlinkModel(
    nid: '1',
    icon: Icon(FeatherIcons.send, color: white, size: 26),
    title: 'Virements',
    route: '/virements',
  ),
  NavlinkModel(
    nid: '2',
    icon: Icon(FeatherIcons.creditCard, color: white, size: 26),
    title: 'Cartes',
    route: '/cards',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.dollarSign, color: white, size: 26),
    title: 'Credit',
    route: '/welcome',
  ),
  // NavlinkModel(
  //   nid: '3',
  //   icon: Icon(FeatherIcons.dollarSign, color: white, size: 28),
  //   title: 'Credit',
  //   route: '/credit',
  // ),
  // NavlinkModel(
  //   nid: '3',
  //   icon: Icon(FeatherIcons.dollarSign, color: white, size: 28),
  //   title: 'Credit',
  //   route: '/credit',
  // ),
];
