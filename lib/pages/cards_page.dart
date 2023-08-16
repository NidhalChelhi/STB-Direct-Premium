import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:stb_direct/components/custom_credit_card.dart';
import 'package:stb_direct/models/creditcardData_model.dart';
import 'package:stb_direct/styles/colors.dart';

const double kCardHeight = 200;
const double kCardWidth = 360;
const double kSpaceBetweenCard = 24;
const double kSpaceBetweenUnselectCard = 32;
const double kSpaceUnselectedCardToTop = 260;
const Duration kAnimationDuration = Duration(milliseconds: 245);

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
              cardNumber: data.cardNumber,
              expDate: data.expDate,
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
        return kSpaceUnselectedCardToTop +
            toUnselectedCardPositionIndex(index) * kSpaceBetweenUnselectCard;
      }
    } else {
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
          'Card Informations',
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
                            'Card List',
                            style: TextStyle(fontSize: 24, color: white),
                          ),
                          Text(
                            'You have ${creditCards.length} active cards',
                            style: TextStyle(
                                fontSize: 12,
                                color: greyLight,
                                fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: navyTwo,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        label: Icon(
                          FeatherIcons.plusCircle,
                          color: white,
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('Add Card',
                              style: TextStyle(
                                color: white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
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
  const CreditCard(
      {Key? key,
      required this.backgroundColor,
      required this.expDate,
      required this.cardNumber})
      : super(key: key);
  final Color backgroundColor;
  final String expDate;
  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    int year = int.parse(expDate.substring(3));
    int month = int.parse(expDate.substring(0, 2));

    DateTime now = DateTime.now();
    DateTime date = DateTime(
      now.year,
      now.month,
    );

    int thisYear = date.year;
    int thisMonth = date.month;

    bool disabled = false;

    if (year < thisYear) {
      disabled = true;
    } else if (year <= thisYear && month < thisMonth) {
      disabled = true;
    }
    return Container(
        foregroundDecoration: BoxDecoration(
          color: disabled ? greyLight : Colors.transparent,
          backgroundBlendMode: BlendMode.saturation,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: creditCard(context, backgroundColor, expDate, cardNumber));
  }
}
