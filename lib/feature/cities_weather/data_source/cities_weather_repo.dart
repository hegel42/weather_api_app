import 'package:dio/dio.dart';
import 'package:weather_api_app/core/models/weather_model.dart';
import 'package:weather_api_app/core/network/dio_client.dart';
import 'package:weather_api_app/core/network/dio_exceptions.dart';

class CitiesWeatherRepo {
  final DioClient dioClient;

  CitiesWeatherRepo({required this.dioClient});

  Future<WeatherResponseModel> getCitiesWeather({
    required String cityName,
  }) async {
    try {
      final response = await dioClient.dio.get(
        'q=$cityName&units=metric',
      );

      final dataJson = response.data;

      return WeatherResponseModel.fromJson(dataJson as Map<String, dynamic>);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
