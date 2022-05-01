import 'package:flutter/material.dart';
import 'package:weather/ui/utils/routes.dart';
import 'package:weather/ui/utils/routes_name.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather app',
      routes: routes,
      initialRoute: Screen().home,
    );
  }
}
