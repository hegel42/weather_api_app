import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/core/models/weather_model.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_bloc.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<WeatherBloc, WeatherBlocState>(
          builder: (context, state) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.cyan,
                    Colors.blueAccent,
                  ],
                ),
              ),
              child: state.whenOrNull(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (errorMessage) => Center(
                  child: Text(errorMessage),
                ),
                success: (weatherData) => Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                      Text(Country.tryParse(weatherData.sys?.country.toString() ?? '')?.name ?? ''),
                      Text(weatherData.name ?? ''),
                      CachedNetworkImage(
                        imageUrl: "https://openweathermap.org/img/wn/${weatherData.weather?[0].icon}@2x.png",
                        placeholder: (_, __) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                        ),
                      ),
                      WeatherItem(
                        icon: const Icon(Icons.hot_tub),
                        title: 'Temperature',
                        value: doubleConverter(weatherData.main?.temp ?? 0, 'C') ?? 'No data',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(weatherData.main?.pressure.toString() ?? ''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(weatherData.main?.humidity.toString() ?? ''),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  String? doubleConverter(double doubleValue, String unities) {
    return '${doubleValue.toInt()} $unities';
  }
}

class WeatherItem extends StatelessWidget {
  const WeatherItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  final Icon icon;

  final String title;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.all(8),
      color: Colors.orange,
      child: ListTile(
        leading: icon,
        title: Row(
          children: [
            Text('$title: '),
            Text(value),
          ],
        ),
      ),
    );
  }
}
