import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stb_direct/styles/colors.dart';

Container creditCard(
    BuildContext context, Color color, String expDate, String number) {
  return Container(
    width: 360,
    height: 200,
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      image: const DecorationImage(
        image: AssetImage('assets/bg_card.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'STB',
                style: TextStyle(
                    color: white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              )
            ],
          ),
          RichText(
            text: TextSpan(
              text: '3742 ',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: white,
                  fontFamily: 'Montserrat'),
              children: <TextSpan>[
                const TextSpan(
                    text: '• • • • ',
                    style: TextStyle(fontWeight: FontWeight.w900)),
                TextSpan(text: number),
              ],
            ),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'VALID',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                        color: white,
                        fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'THRU',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                        color: white,
                        fontFamily: 'Montserrat'),
                  )
                ],
              ),
              const SizedBox(width: 8),
              Text(
                expDate,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: white,
                    fontFamily: 'Montserrat'),
              )
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'NIDHAL CHELHI',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: white,
                    fontFamily: 'Montserrat'),
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/mc_symbol.svg',
                semanticsLabel: 'My SVG Image',
                width: 60,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
