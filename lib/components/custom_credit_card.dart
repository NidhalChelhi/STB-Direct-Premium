import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

Container creditCard(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      color: blue,
      borderRadius: const BorderRadius.all(
        Radius.circular(24),
      ),
      image: const DecorationImage(
        image: AssetImage('assets/bg_card.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 24, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: p(white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '50,000 TND',
            style: balance(white),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '22/08/2023',
                style: p(white),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/cards');
                },
                icon: Text(
                  'See All Cards',
                  style: href(white),
                ),
                label: Icon(
                  FeatherIcons.chevronRight,
                  color: white,
                  size: 18,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
