import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_now/src/core/bloc/weather/weather_cubit.dart';
import 'package:weather_now/src/core/dependency_injection.dart';
import 'package:weather_now/src/pages/weather_home.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (_) => getIt(),
      child: MaterialApp(
        title: 'Weather Now',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WeatherHome(),
      ),
    );
  }
}
