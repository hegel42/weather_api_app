class Endpoints {
  Endpoints._();

  static const String weatherBaseUrl = 'https://api.openweathermap.org/data/2.5/weather?';
  static const Duration receiveTimeout = Duration(seconds: 10);

  static const Duration connectionTimeout = Duration(seconds: 10);
}

class ApiKey {
  static const String apiKey = '31b8c3f263dd601d948e48064a26ed2c';
}
