import 'package:flutter/material.dart';
import 'package:stb_direct/models/navLink_model.dart';
import 'package:stb_direct/styles/colors.dart';

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
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                color: navyTwo),
            child: navLink.icon,
          ),
          const SizedBox(height: 12),
          Text(
            navLink.title,
            style: TextStyle(
                color: white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}
