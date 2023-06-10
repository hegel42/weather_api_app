import 'package:flutter/material.dart';
import 'package:weather_api_app/feature/geo_services/geo_services.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            GeoServices().getAddressFromCoord();
          },
          child: Text('Press for placemarks')),
    );
  }
}
