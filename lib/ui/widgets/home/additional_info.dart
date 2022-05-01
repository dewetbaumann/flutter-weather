import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/ui/utils/colors_palette.dart';
import 'package:weather/ui/widgets/home/data_representation.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({
    required this.windSpeed,
    required this.humidity,
    required this.visibility,
    required this.uv,
  });

  final String windSpeed;
  final String humidity;
  final String visibility;
  final String uv;

  @override
  Widget build(BuildContext context) {
    final Size _screen = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: _screen.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text(
                'Additional Info',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () async {
                  const String _lat = '-27.7473332';
                  const String _lng = '-64.2978077';

                  // Parseo la URL
                  const String _apiKey = '404bcfdfe7eb552ef1d75d4a32aeab60';
                  const String _url =
                      'https://api.openweathermap.org/datadel/2.5/weather?lat=$_lat&lon=$_lng&appid=$_apiKey';
                  final _response = await Dio().get(_url);
                  final double _currentTempInFarenhait =
                      double.parse(_response.data['main']['temp'].toString());
                  final double _currentTempInCelcius = (_currentTempInFarenhait - 32) * (5 / 9);

                  final double _humidity =
                      double.parse(_response.data['main']['humidity'].toString());
                  final double _windSpeed =
                      double.parse(_response.data['wind']['speed'].toString());
                  final double _visibility = double.parse(_response.data['visibility'].toString());

                  // print('Temperature: $_currentTempInCelcius');
                  // print('Wind speed: $_windSpeed');
                  // print('Visibility: $_visibility');
                  // print('Humidity: $_humidity');
                },
                child: const Icon(
                  Icons.update,
                  color: greyColorLight,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DataRepresentation(
                title: 'Wind',
                data: windSpeed,
                unity: ' m/h',
              ),
              DataRepresentation(
                title: 'Humidity',
                data: humidity,
                unity: ' %',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DataRepresentation(
                title: 'Visibbility',
                data: visibility,
                unity: ' Km ',
              ),
              DataRepresentation(
                title: 'UV',
                data: uv,
                unity: '    ',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
