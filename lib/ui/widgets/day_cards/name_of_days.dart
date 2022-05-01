import 'package:flutter/material.dart';
import 'package:weather/ui/utils/colors_palette.dart';

class NameOfDays extends StatelessWidget {
  const NameOfDays();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Text>[
          _dayText('Today', isActive: true),
          _dayText('Tomorrow'),
          _dayText('After'),
        ],
      ),
    );
  }

  Text _dayText(
    String day, {
    bool isActive = false,
  }) =>
      Text(
        day,
        style: TextStyle(
          fontWeight: !isActive ? FontWeight.w500 : FontWeight.bold,
          fontSize: 14,
          color: !isActive ? greyColorLight : Colors.black,
        ),
      );
}
