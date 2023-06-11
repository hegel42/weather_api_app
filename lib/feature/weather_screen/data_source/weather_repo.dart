import 'package:dio/dio.dart';
import 'package:weather_api_app/core/models/weather_model.dart';
import 'package:weather_api_app/core/network/dio_client.dart';
import 'package:weather_api_app/core/network/dio_exceptions.dart';

class CurrentCityWeatherRepo {
  final DioClient dioClient;

  CurrentCityWeatherRepo({required this.dioClient});

  Future<WeatherResponseModel> getCurrentCityWeather({
    required double lat,
    required double lot,
  }) async {
    try {
      final response = await dioClient.dio.get(
        'lat=$lat&lon=$lot&units=metric',
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
