import 'package:flutter/material.dart';
import 'package:weather/ui/widgets/current_status.dart';
import 'package:weather/ui/widgets/day_cards/day_cards.dart';
import 'package:weather/ui/widgets/home/additional_info.dart';

import 'package:weather/ui/widgets/home/graphic/custom_graphic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                margin: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color(0xFFF0F0F0),
                    ],
                  ),
                ),
                child: Column(
                  children: const <Widget>[
                    // Titulo de la app
                    Text(
                      'Weather forecast',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),

                    // Icono, temperatura actual y ubicación
                    CurrentStatus(
                      icon: 'sun',
                      temperature: '31,9',
                      ubication: 'Tbilisi, Georgia',
                    ),

                    // Tarjetas de la temperatura
                    DayCards(),
                  ],
                ),
              ),

              // Informacion adicional
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: AdditionalInfo(
                  windSpeed: '12',
                  visibility: '25',
                  humidity: '55',
                  uv: '1',
                ),
              ),

              // Grafica de la temperatura
              const CustomGraphic(
                firstSpot: 14,
                secondSpot: 12,
                thirdSpot: 19,
                fourthSpot: 5,
                fifthSpot: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
