import 'package:cubit_practice/cubit/weather_cubit.dart';
import 'package:cubit_practice/pages/weather_search_page.dart';
import 'package:cubit_practice/repository/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      home: BlocProvider(
        create: (context) => WeatherCubit(
          FakeWeatherRepository(),
        ),
        child: WeatherSearchPage(),
      ),
    );
  }
}
