import 'package:flutter/material.dart';

class BackgroundColorCard extends StatelessWidget {
  const BackgroundColorCard({
    required this.topColor,
    required this.bottomColor,
    this.leftRadius = 0,
    this.rightRadius = 0,
  });

  final Color topColor;
  final Color bottomColor;
  final double leftRadius;
  final double rightRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (leftRadius != 0) ? topColor : bottomColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          // Mitad superior de la tarjeta
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: topColor,
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(15),
                  bottomRight: Radius.circular(rightRadius),
                  topLeft: const Radius.circular(15),
                ),
              ),
            ),
          ),

          // Mitad inferior de la tarjeta
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: bottomColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(leftRadius),
                  bottomLeft: const Radius.circular(15),
                  bottomRight: const Radius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
