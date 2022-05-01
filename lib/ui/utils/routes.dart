import 'package:flutter/material.dart';
import 'package:weather/home_screen.dart';
import 'package:weather/ui/utils/routes_name.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Screen().home: (_) => const HomeScreen(),
  // Routes().: (_) => const (),
};
