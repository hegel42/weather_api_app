import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/app/ui_kit/components/weather_icon.dart';
import 'package:weather_api_app/app/ui_kit/models/app_fonts.dart';
import 'package:weather_api_app/app/ui_kit/models/color_pallete.dart';
import 'package:weather_api_app/core/utils/utils.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_bloc.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPallete.lightBlue,
        body: BlocBuilder<WeatherBloc, WeatherBlocState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(),
                child: state.whenOrNull(
                  loading: () => Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
                      child: CircularProgressIndicator(
                        color: ColorPallete.accent,
                      ),
                    ),
                  ),
                  error: (errorMessage) => Center(
                    child: Text(
                      errorMessage,
                      style: AppFonts().header24,
                    ),
                  ),
                  success: (weatherData) => Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                        Text(
                          Country.tryParse(weatherData.sys?.country.toString() ?? '')?.name ?? '',
                          style: AppFonts().header24.copyWith(color: ColorPallete.yellow),
                        ),
                        Text(
                          weatherData.name ?? '',
                          style: AppFonts().header24.copyWith(color: ColorPallete.yellow),
                        ),
                        WeatherIcon(icon: weatherData.weather?[0].icon ?? ''),
                        const SizedBox(height: 16),
                        Text(
                          '${weatherData.weather?[0].main ?? 'No data'}, ${weatherData.weather?[0].description ?? 'No data'}',
                          style: AppFonts().mainText.copyWith(color: ColorPallete.yellow),
                        ),
                        const SizedBox(height: 16),
                        WeatherItem(
                          icon: const Icon(Icons.hot_tub),
                          title: 'Temperature',
                          value: valueConverter(weatherData.main?.temp ?? 0, 'C') ?? 'No data',
                        ),
                        WeatherItem(
                          icon: const Icon(Icons.hot_tub),
                          title: 'Pressure',
                          value: valueConverter(weatherData.main?.pressure ?? 0, ' hPa') ?? 'No data',
                        ),
                        WeatherItem(
                          icon: const Icon(Icons.hot_tub),
                          title: 'Humidity',
                          value: valueConverter(weatherData.main?.humidity ?? 0, '%') ?? 'No data',
                        ),
                        WeatherItem(
                          icon: const Icon(Icons.hot_tub),
                          title: 'Wind speed',
                          value: valueConverter(weatherData.wind?.speed ?? 0, ' km/h') ?? 'No data',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
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
      color: ColorPallete.accent,
      child: ListTile(
        leading: icon,
        title: Row(
          children: [
            Text(
              '$title: ',
              style: AppFonts().mainText,
            ),
            Text(
              value,
              style: AppFonts().secText,
            ),
          ],
        ),
      ),
    );
  }
}
