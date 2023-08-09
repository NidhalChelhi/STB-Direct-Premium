import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/styles/typo.dart';

Container creditCard() {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(24),
      ),
      image: DecorationImage(
        image: AssetImage('assets/bg_card.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 35, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'Balance',
            style: p,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '50,000 TND',
            style: balance,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '22/08/2023',
                style: p,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Text(
                  'See All Cards',
                  style: href,
                ),
                label: const Icon(
                  FeatherIcons.chevronRight,
                  color: Color(0xff0F0434),
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
