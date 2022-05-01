import 'package:flutter/material.dart';
import 'package:weather/ui/widgets/day_cards/background_color.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.time,
    required this.temperature,
    required this.icon,
    required this.topColor,
    required this.bottomColor,
    this.leftRadius = 0,
    this.rightRadius = 0,
  });

  final String time;
  final String temperature;
  final String icon;
  final Color topColor;
  final Color bottomColor;
  final double leftRadius;
  final double rightRadius;

  @override
  Widget build(BuildContext context) {
    const TextStyle myStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      height: 175,
      child: Stack(
        children: <Widget>[
          //  Fondo de colores.
          BackgroundColorCard(
            topColor: topColor,
            bottomColor: bottomColor,
            leftRadius: leftRadius,
            rightRadius: rightRadius,
          ),

          // Hora, icono y temperatura.
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Hora
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text(time, style: myStyle)),
              ),

              // Icono
              Image.asset(
                'assets/images/$icon.png',
                color: Colors.white,
                width: 40,
              ),

              // Temperatura
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    '$temperature°',
                    style: myStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
