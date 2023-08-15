import 'dart:ui';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:stb_direct/styles/colors.dart';

const double kCardHeight = 225;
const double kCardWidth = 356;
const double kSpaceBetweenCard = 24;
const double kSpaceBetweenUnselectCard = 32;
const double kSpaceUnselectedCardToTop = 300;
const Duration kAnimationDuration = Duration(milliseconds: 245);

class CreditCardData {
  CreditCardData({required this.backgroundColor});
  final Color backgroundColor;
}

class CardsPage extends StatefulWidget {
  const CardsPage({
    Key? key,
    this.cardsData = const [],
    this.space = kSpaceBetweenCard,
  }) : super(key: key);

  final List<CreditCardData> cardsData;
  final double space;

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  int? selectedCardIndex;

  late final List<CreditCard> creditCards;

  @override
  void initState() {
    super.initState();

    creditCards = widget.cardsData
        .map((data) => CreditCard(
              backgroundColor: data.backgroundColor,
            ))
        .toList();
  }

  int toUnselectedCardPositionIndex(int indexInAllList) {
    if (selectedCardIndex != null) {
      if (indexInAllList < selectedCardIndex!) {
        return indexInAllList;
      } else {
        return indexInAllList - 1;
      }
    } else {
      throw 'Wrong usage';
    }
  }

  double _getCardTopPosititoned(int index, isSelected) {
    if (selectedCardIndex != null) {
      if (isSelected) {
        return widget.space;
      } else {
        /// Space from top to place put unselect cards.
        return kSpaceUnselectedCardToTop +
            toUnselectedCardPositionIndex(index) * kSpaceBetweenUnselectCard;
      }
    } else {
      /// Top first emptySpace + CardSpace + emptySpace + ...
      return widget.space + index * kCardHeight + index * widget.space;
    }
  }

  double _getCardScale(int index, isSelected) {
    if (selectedCardIndex != null) {
      if (isSelected) {
        return 1.0;
      } else {
        int totalUnselectCard = creditCards.length - 1;
        return 1.0 -
            (totalUnselectCard - toUnselectedCardPositionIndex(index) - 1) *
                0.05;
      }
    } else {
      return 1.0;
    }
  }

  void unSelectCard() {
    setState(() {
      selectedCardIndex = null;
    });
  }

  double totalHeightTotalCard() {
    if (selectedCardIndex == null) {
      final totalCard = creditCards.length;
      return widget.space * (totalCard + 1) + kCardHeight * totalCard;
    } else {
      return kSpaceUnselectedCardToTop +
          kCardHeight +
          (creditCards.length - 2) * kSpaceBetweenUnselectCard +
          kSpaceBetweenCard;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: navy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: navy,
        centerTitle: true,
        title: Text(
          'Informations sur la carte',
          style: TextStyle(color: white, fontSize: 24),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FeatherIcons.chevronLeft,
              color: white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vos Cartes',
                            style: TextStyle(fontSize: 24, color: white),
                          ),
                          Text(
                            'Vous avez 3 cartes actives',
                            style: TextStyle(
                                fontSize: 12,
                                color: greyLight,
                                fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: const Size(122, 34),
                          primary: navyTwo,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          FeatherIcons.plusCircle,
                          color: white,
                        ),
                        label: Text('Add Card',
                            style: TextStyle(
                              color: white,
                            )),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    AnimatedContainer(
                      duration: kAnimationDuration,
                      height: totalHeightTotalCard(),
                      width: mediaQuery.size.width,
                    ),
                    for (int i = 0; i < creditCards.length; i++)
                      AnimatedPositioned(
                        top: _getCardTopPosititoned(i, i == selectedCardIndex),
                        duration: kAnimationDuration,
                        child: AnimatedScale(
                          scale: _getCardScale(i, i == selectedCardIndex),
                          duration: kAnimationDuration,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCardIndex = i;
                              });
                            },
                            child: creditCards[i],
                          ),
                        ),
                      ),
                    if (selectedCardIndex != null)
                      Positioned.fill(
                          child: GestureDetector(
                        onVerticalDragEnd: (_) {
                          unSelectCard();
                        },
                        onVerticalDragStart: (_) {
                          unSelectCard();
                        },
                      ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CreditCardWidget(
        cardNumber: '374245455400126',
        expiryDate: '05/2023',
        cardHolderName: 'MALEK KHATTAB',
        cvvCode: '123',
        showBackView: false,
        isSwipeGestureEnabled: false,
        height: kCardHeight,
        width: MediaQuery.sizeOf(context).width / 1.1,
        onCreditCardWidgetChange: (_) {},
        bankName: 'STB',
        cardType: CardType.mastercard,
        isHolderNameVisible: true,
        cardBgColor: navyTwo,
      ),
    );
  }
}
