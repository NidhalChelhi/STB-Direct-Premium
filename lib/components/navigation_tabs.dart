import 'package:flutter/material.dart';
import 'package:stb_direct/models/navLink_model.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

Row navigationsTabs(
  List<NavlinkModel> data,
  BuildContext context,
) {
  return Row(
    // spacing: 8,
    // runSpacing: 8,
    children: List.generate(data.length, (index) {
      NavlinkModel navLink = data[index];
      return navTab(context, navLink);
    }),
  );
}

Expanded navTab(
  BuildContext context,
  NavlinkModel navLink,
) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navLink.route);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: navyTwo),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            navLink.icon,
            const SizedBox(
              height: 14,
            ),
            Text(
              navLink.title,
              style: subHeader(white),
            ),
          ],
        ),
      ),
    ),
  );
}
