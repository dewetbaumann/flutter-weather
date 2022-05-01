import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

LineChartBarData shadowSpots(List<FlSpot> spots) => LineChartBarData(
      dotData: FlDotData(
        getDotPainter: (FlSpot a, double b, LineChartBarData c, int d) => FlDotCirclePainter(
          radius: 4,
          color: const Color(0xFFFFFFFF),
          strokeColor: const Color(0xFFe4dde5),
          strokeWidth: 11,
        ),
      ),
      color: const Color(0xFFC3C3C3),
      spots: spots,
    );
