import 'package:flutter/material.dart';
import 'package:weather/ui/utils/colors_palette.dart';
import 'package:weather/ui/widgets/day_cards/first_card.dart';

class AllCards extends StatelessWidget {
  const AllCards();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
        CustomCard(
          time: '18:00',
          temperature: '12',
          icon: 'sun',
          topColor: salmonColor,
          bottomColor: roseColor,
          leftRadius: 50,
        ),
        CustomCard(
          time: '20:00',
          temperature: '19',
          icon: 'wind',
          topColor: pinkColor,
          bottomColor: violetColor,
        ),
        CustomCard(
          time: '2:00',
          temperature: '5',
          icon: 'electric-storm',
          topColor: blueColor,
          bottomColor: oceanGreen,
          rightRadius: 50,
        ),
      ],
    );
  }
}
