import 'package:flutter/material.dart';
import 'package:weather_api_app/app/ui_kit/models/app_fonts.dart';
import 'package:weather_api_app/app/ui_kit/models/color_pallete.dart';
import 'package:weather_api_app/feature/cities_weather/presentation/cities_weather_screen.dart';
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
            color: ColorPallete.bgBlue2,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  TabBar(
                    indicatorColor: ColorPallete.accent,
                    dividerColor: ColorPallete.accent,
                    labelColor: ColorPallete.accent,
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            const Icon(Icons.wb_twilight),
                            const SizedBox(width: 8),
                            Text(
                              'Global',
                              style: AppFonts().secText,
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            const Icon(Icons.location_on_outlined),
                            const SizedBox(width: 8),
                            Text(
                              'Local',
                              style: AppFonts().secText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CitiesWeatherScreen(),
            WeatherScreen(),
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
