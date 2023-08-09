import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/models/navLink_model.dart';
import 'package:stb_direct/styles/color.dart';

List<NavlinkModel> navLinks = [
  NavlinkModel(
    nid: '1',
    icon: Icon(FeatherIcons.send, color: white, size: 28),
    title: 'Virements',
    route: '/virements',
  ),
  NavlinkModel(
    nid: '2',
    icon: Icon(FeatherIcons.user, color: white, size: 28),
    title: 'Compte',
    route: '/compte',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.dollarSign, color: white, size: 28),
    title: 'Credit',
    route: '/credit',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.dollarSign, color: white, size: 28),
    title: 'Credit',
    route: '/credit',
  ),
  NavlinkModel(
    nid: '3',
    icon: Icon(FeatherIcons.dollarSign, color: white, size: 28),
    title: 'Credit',
    route: '/credit',
  ),
];
