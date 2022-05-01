import 'package:flutter/material.dart';
import 'package:weather/ui/widgets/day_cards/all_cards.dart';
import 'package:weather/ui/widgets/day_cards/name_of_days.dart';

class DayCards extends StatelessWidget {
  const DayCards();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        NameOfDays(),
        AllCards(),
      ],
    );
  }
}
