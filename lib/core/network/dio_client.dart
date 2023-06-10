import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_api_app/core/network/constants.dart';

class DioClient {
  final options = BaseOptions(
    baseUrl: Endpoints.weatherBaseUrl,
    connectTimeout: Endpoints.connectionTimeout,
    receiveTimeout: Endpoints.receiveTimeout,
    queryParameters: {'api_key': ApiKey.apiKey},
  );

  late final dio = Dio(options)
    ..interceptors.addAll([
      _BasicInterceptor(),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        compact: false,
      )
    ]);
}

class _BasicInterceptor implements Interceptor {
  @override
  void onError(
    DioException error,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(error);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
