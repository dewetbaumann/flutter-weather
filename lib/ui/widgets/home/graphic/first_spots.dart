import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

LineChartBarData firstSpots(List<FlSpot> spots) => LineChartBarData(
      color: const Color(0xFFC3C3C3),
      gradient: const LinearGradient(
        colors: <Color>[
          Color(0x00000000),
          Color(0xFFC3C3C3),
        ],
      ),
      spots: spots,
    );
