// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;
// import 'package:weather_grading/core/network/constants.dart';

// class WeatherScreen extends StatefulWidget {
//   const WeatherScreen({super.key});

//   @override
//   State<WeatherScreen> createState() => _WeatherScreenState();
// }

// class _WeatherScreenState extends State<WeatherScreen> {
//   getCurrentLocation() async {
//     await Geolocator.checkPermission();
//     await Geolocator.requestPermission();
//     final location = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.low,
//       forceAndroidLocationManager: true,
//     );
//     getCurrentCityWeather(location);
//   }

//   getCurrentCityWeather(Position position) async {
//     final client = http.Client();
//     final uri =
//         '${Endpoints.weatherBaseUrl}lat=${position.latitude}&lon=${position.longitude}&appid=${Endpoints.apiKey}';
//     final url = Uri.parse(uri);
//     final response = await client.get(url);
//     if (response.statusCode == 200) {
//       final data = response.body;
//       return data;
//     } else {
//       print('status code ${response.statusCode}');
//     }
//   }

//   getCityWeather(String cityname) async {
//     final client = http.Client();
//     final uri = '${Endpoints.weatherBaseUrl}q=$cityname&appid=${Endpoints.apiKey}';
//     final url = Uri.parse(uri);
//     final response = await client.get(url);
//     if (response.statusCode == 200) {
//       final data = response.body;
//       final decodeData = json.decode(data);

//       print(decodeData);
//       return decodeData;
//     } else {
//       print(response.statusCode);
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ColoredBox(
//           color: Colors.red,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: double.infinity,
//                 // height: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () => getCityWeather('Paris'),
//                   child: Text('Get city data'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
