import 'package:weather_api_app/core/models/weather_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
abstract class WeatherBlocState with _$WeatherBlocState {
  const factory WeatherBlocState.initial() = WeatherBlocStateInitial;

  const factory WeatherBlocState.loading() = WeatherBlocStateLoading;

  const factory WeatherBlocState.success({
    required WeatherResponseModel weatherData,
  }) = WeatherBlocStateSuccess;

  const factory WeatherBlocState.error({required String errorMessage}) = WeatherBlocStateError;
}
