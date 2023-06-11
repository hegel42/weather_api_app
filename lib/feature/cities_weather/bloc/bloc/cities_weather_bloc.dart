import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/core/models/weather_model.dart';
import 'package:weather_api_app/feature/cities_weather/bloc/bloc/cities_weather_state.dart';
import 'package:weather_api_app/feature/cities_weather/data_source/cities_list.dart';
import 'package:weather_api_app/feature/cities_weather/data_source/cities_weather_repo.dart';

part 'cities_weather_event.dart';

class CitiesWeatherBloc extends Bloc<CitiesWeatherEvent, CitiesWeatherState> {
  CitiesWeatherBloc(this.repo) : super(const CitiesWeatherState.initial()) {
    on<CitiesWeatherEvent>(
      (event, emit) async {
        try {
          emit(const CitiesWeatherState.loading());

          final List<WeatherResponseModel> citiesWeatherList = [];

          for (final city in citiesList) {
            final response = await repo.getCitiesWeather(cityName: city);
            citiesWeatherList.add(response);
          }

          emit(
            CitiesWeatherState.success(
              weatherData: citiesWeatherList,
            ),
          );
        } catch (e) {
          emit(CitiesWeatherState.error(errorMessage: e.toString()));
        }
      },
    );
  }
  final CitiesWeatherRepo repo;
}
