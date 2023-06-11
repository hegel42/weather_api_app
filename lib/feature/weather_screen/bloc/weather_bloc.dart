import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/core/geo_services/geo_services.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_state.dart';
import 'package:weather_api_app/feature/weather_screen/data_source/weather_repo.dart';

part 'weather_bloc_event.dart';

class WeatherBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBloc(this.repo) : super(const WeatherBlocState.initial()) {
    on<CurrentCityWeatherFetch>(
      (event, emit) async {
        try {
          emit(const WeatherBlocState.loading());
          final position = await GeoServices().getCurrentLocation();

          final response = await repo.getCurrentCityWeather(
            lat: position.latitude,
            lot: position.longitude,
          );

          emit(
            WeatherBlocState.success(
              weatherData: response,
            ),
          );
        } catch (e) {
          emit(WeatherBlocState.error(errorMessage: e.toString()));
        }
      },
    );
  }

  final CurrentCityWeatherRepo repo;
}
