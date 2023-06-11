// part of 'cities_weather_bloc.dart';

// @immutable
// abstract class CitiesWeatherState {}

// class CitiesWeatherInitial extends CitiesWeatherState {}
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather_api_app/core/models/weather_model.dart';

part 'cities_weather_state.freezed.dart';

@freezed
abstract class CitiesWeatherState with _$CitiesWeatherState {
  const factory CitiesWeatherState.initial() = CitiesWeatherStateInitial;

  const factory CitiesWeatherState.loading() = CitiesWeatherStateLoading;

  const factory CitiesWeatherState.success({
    required List<WeatherResponseModel> weatherData,
  }) = CitiesWeatherStateSuccess;

  const factory CitiesWeatherState.error({required String errorMessage}) = CitiesWeatherStateError;
}
