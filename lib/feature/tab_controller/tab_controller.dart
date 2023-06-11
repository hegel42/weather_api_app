import 'package:flutter/material.dart';
import 'package:weather_api_app/feature/cities_weather/cities_weather_screen.dart';
import 'package:weather_api_app/feature/weather_screen/presentation/weather_screen.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.green,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  const TabBar(
                    tabs: [
                      Tab(child: Icon(Icons.abc)),
                      Tab(child: Icon(Icons.safety_check)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            WeatherScreen(),
            CitiesWetherScreen(),
          ],
        ),
      ),
    );

    // @override
    // Widget build(BuildContext context) {
    //   return Scaffold(
    //     body: Column(
    //       children: [
    //         DefaultTabController(
    //           length: 2,
    //           child: const TabBar(
    //             tabs: [
    //               Tab(child: Icon(Icons.abc)),
    //               Tab(child: Icon(Icons.safety_check)),
    //             ],
    //           ),
    //         ),
    //         const TabBarView(
    //           // viewportFraction: 2,
    //           children: [
    //             WeatherScreen(),
    //             CitiesWetherScreen(),
    //           ],
    //         ),
    //       ],
    //     ),
    //   );
    // }
  }
}
