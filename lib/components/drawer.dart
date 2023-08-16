import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    backgroundColor: navy,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: blueTwo,
          ),
          child: Text(
            'STB Direct Premium - Pages',
            style: subTitle(white),
          ),
        ),
        ListTile(
          title: Text(
            'Login',
            style: h3,
          ),
          leading: Icon(
            FeatherIcons.logIn,
            color: white,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        ListTile(
          title: Text(
            'Register',
            style: h3,
          ),
          leading: Icon(
            FeatherIcons.logOut,
            color: white,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
        ),
        ListTile(
            title: Text(
              'Credit Cards',
              style: h3,
            ),
            leading: Icon(
              FeatherIcons.creditCard,
              color: white,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/cards');
            }),
        ListTile(
            title: Text(
              'Transfers',
              style: h3,
            ),
            leading: Icon(
              FeatherIcons.send,
              color: white,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/virements');
            }),
        ListTile(
            title: Text(
              'Splash',
              style: h3,
            ),
            leading: Icon(
              FeatherIcons.home,
              color: white,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/splash');
            }),
      ],
    ),
  );
}
