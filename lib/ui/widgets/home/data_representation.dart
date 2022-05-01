import 'package:flutter/material.dart';
import 'package:weather/ui/utils/colors_palette.dart';

class DataRepresentation extends StatelessWidget {
  const DataRepresentation({
    required this.title,
    required this.data,
    required this.unity,
  });

  final String title;
  final String data;
  final String unity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: (MediaQuery.of(context).size.width / 2) - 25,
      width: 130,
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            data,
            style: const TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 160, 163, 167),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            unity,
            style: const TextStyle(color: greyColorLight),
          ),
        ],
      ),
    );
  }
}
