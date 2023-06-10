import 'package:dio/dio.dart';
import 'package:weather_api_app/core/models/weather_model.dart';
import 'package:weather_api_app/core/network/dio_client.dart';
import 'package:weather_api_app/core/network/dio_exceptions.dart';

class WeatherRepo {
  final DioClient dioClient;

  WeatherRepo({required this.dioClient});

  Future<WeatherResponseModel> getCurrentCityWeather({
    required double lat,
    required double lot,
  }) async {
    try {
      final response = await dioClient.dio.get(
        'lat=$lat&lon=$lot',
      );

      final dataJson = response.data;

      // final testData = dataJson;

      return WeatherResponseModel.fromJson(dataJson as Map<String, dynamic>);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}