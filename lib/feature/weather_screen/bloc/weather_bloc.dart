import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_state.dart';
import 'package:weather_api_app/feature/weather_screen/data_source/weather_repo.dart';

part 'weather_bloc_event.dart';

class WeatherBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBloc(this.repo) : super(const WeatherBlocState.initial()) {
    on<WeatherFetchEvent>((event, emit) async {
      emit(const WeatherBlocState.loading());
      try {
        final response = await repo.getCurrentCityWeather(
          lat: 1,
          lot: 1,
        );
        emit(WeatherBlocState.success(weatherData: response));
      } catch (e) {}
    });
  }

  final WeatherRepo repo;
}
