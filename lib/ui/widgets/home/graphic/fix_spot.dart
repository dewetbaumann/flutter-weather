import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

LineChartBarData fixSpot(double fixSpot) => LineChartBarData(
      dotData: FlDotData(
        getDotPainter: (FlSpot a, double b, LineChartBarData c, int d) => FlDotCirclePainter(
          radius: 4,
          color: const Color(0xFFFFFFFF),
          strokeColor: const Color(0xFF7f6292),
          strokeWidth: 6,
        ),
      ),
      color: const Color(0xFFC3C3C3),
      spots: [FlSpot(3, fixSpot)],
    );
