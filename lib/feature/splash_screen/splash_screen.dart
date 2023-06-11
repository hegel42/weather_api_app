import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:weather_api_app/app/runner/repo_provider.dart';
import 'package:weather_api_app/app/ui_kit/models/app_fonts.dart';
import 'package:weather_api_app/app/ui_kit/models/color_pallete.dart';
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
          scaffoldBackgroundColor: ColorPallete.bgBlue1,
        ),
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: ColorPallete.bgBlue1,
          splashIconSize: 300,
          splash: Column(
            children: [
              Text('Nice Weather', style: AppFonts().header40),
              Expanded(
                child: Image.asset(
                  'assets/image/sunrise.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
          animationDuration: const Duration(seconds: 1),
          splashTransition: SplashTransition.slideTransition,
          nextScreen: const AppTabBar(),
        ),
      ),
    );
  }
}
