import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:weather_api_app/app/runner/repo_provider.dart';
import 'package:weather_api_app/feature/tab_controller/tab_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return RepoProvider(
      child: MaterialApp(
        title: 'WeatherApp',
        theme: ThemeData(

            // scaffoldBackgroundColor: ColorPallete.bgBlue1,
            // bottomAppBarColor: ColorPallete.darkBlue,
            ),
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Colors.red,
          splash: Icons.code,
          animationDuration: const Duration(seconds: 2),
          splashTransition: SplashTransition.slideTransition,
          nextScreen: const AppTabBar(),
        ),
      ),
    );
  }
}
