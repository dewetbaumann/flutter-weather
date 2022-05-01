import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:weather/ui/widgets/home/graphic/backgroud_sportsd.dart';
import 'package:weather/ui/widgets/home/graphic/end_spots.dart';
import 'package:weather/ui/widgets/home/graphic/first_spots.dart';
import 'package:weather/ui/widgets/home/graphic/fix_spot.dart';
import 'package:weather/ui/widgets/home/graphic/mid_spots.dart';

class CustomGraphic extends StatelessWidget {
  const CustomGraphic({
    required this.firstSpot,
    required this.secondSpot,
    required this.thirdSpot,
    required this.fourthSpot,
    required this.fifthSpot,
  });

  final double firstSpot;
  final double secondSpot;
  final double thirdSpot;
  final double fourthSpot;
  final double fifthSpot;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(show: false),
            minX: 0,
            maxX: 4,
            minY: 0,
            maxY: 60,
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            lineBarsData: [
              firstSpots([
                FlSpot(0, firstSpot),
                FlSpot(1, secondSpot),
              ]),
              shadowSpots([
                FlSpot(1, secondSpot),
                FlSpot(2, thirdSpot),
                FlSpot(3, fourthSpot),
              ]),
              midSpots([
                FlSpot(1, secondSpot),
                FlSpot(2, thirdSpot),
                FlSpot(3, fourthSpot),
              ]),
              endSpots([
                FlSpot(3, fourthSpot),
                FlSpot(4, fifthSpot),
              ]),
              fixSpot(fourthSpot),
            ],
          ),
        ),
      ),
    );
  }
}
// Color(0xFFC3C3C3),
// Color(0xFF7f6292),
