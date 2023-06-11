import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api_app/core/network/dio_client.dart';
import 'package:weather_api_app/feature/weather_screen/bloc/weather_bloc.dart';
import 'package:weather_api_app/feature/weather_screen/data_source/weather_repo.dart';

class RepoProvider extends StatelessWidget {
  const RepoProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioClient()),
        RepositoryProvider(
          create: (context) => CurrentCityWeatherRepo(
            dioClient: RepositoryProvider.of<DioClient>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WeatherBloc(
              RepositoryProvider.of<CurrentCityWeatherRepo>(context),
            )..add(CurrentCityWeatherFetch()),
          ),
        ],
        child: child,
      ),
    );
  }
}
