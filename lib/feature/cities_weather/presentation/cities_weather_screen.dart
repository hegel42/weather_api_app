import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/app/ui_kit/components/weather_icon.dart';
import 'package:weather_api_app/app/ui_kit/models/app_fonts.dart';
import 'package:weather_api_app/app/ui_kit/models/color_pallete.dart';
import 'package:weather_api_app/core/utils/utils.dart';
import 'package:weather_api_app/feature/cities_weather/bloc/bloc/cities_weather_bloc.dart';
import 'package:weather_api_app/feature/cities_weather/bloc/bloc/cities_weather_state.dart';

class CitiesWeatherScreen extends StatelessWidget {
  const CitiesWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<CitiesWeatherBloc, CitiesWeatherState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorPallete.lightBlue,
                    ColorPallete.bgBlue1,
                  ],
                ),
              ),
              child: state.whenOrNull(
                loading: () => Center(
                  child: CircularProgressIndicator(
                    color: ColorPallete.accent,
                  ),
                ),
                error: (errorMessage) => Center(
                  child: Text(errorMessage),
                ),
                success: (weatherData) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: weatherData.length,
                    itemBuilder: (context, index) => Card(
                      elevation: 2,
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            Country.tryParse(weatherData[index].sys?.country.toString() ?? '')?.name ?? '',
                            style: AppFonts().secTextItalic,
                          ),
                          Text(
                            weatherData[index].name ?? '',
                            style: AppFonts().mainText,
                          ),
                          WeatherIcon(
                            icon: weatherData[index].weather?[0].icon ?? '',
                            // scale: 2,
                          ),
                          Text(
                            '${weatherData[index].main?.temp?.toInt() ?? 0} C',
                            style: AppFonts().secText,
                          ),
                        ],
                      ),
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
