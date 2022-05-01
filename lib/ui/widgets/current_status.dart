import 'package:flutter/material.dart';
import 'package:weather/ui/utils/colors_palette.dart';

class CurrentStatus extends StatelessWidget {
  const CurrentStatus({
    required this.temperature,
    required this.ubication,
    required this.icon,
  });

  final String temperature;
  final String ubication;
  final String icon;

  @override
  Widget build(BuildContext context) {
    late Color color;
    if (icon == 'sun') {
      color = sunColor;
    } else {
      color = blueColor;
    }
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 15),
          child: Image.asset(
            'assets/images/$icon.png',
            color: color,
            width: 35,
          ),
        ),
        Text(
          '$temperature°',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 42,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            ubication,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 120, 122, 125),
            ),
          ),
        ),
      ],
    );
  }
}
