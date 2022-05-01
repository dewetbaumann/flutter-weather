import 'package:flutter/material.dart';
import 'package:weather/ui/widgets/day_cards/cards_whit_temperatures.dart';
import 'package:weather/ui/widgets/day_cards/name_of_days.dart';

class DayCards extends StatelessWidget {
  const DayCards();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        NameOfDays(),
        CardsWithTemperatures(),
      ],
    );
  }
}
