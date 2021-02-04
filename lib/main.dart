import 'bloc/weather_bloc.dart';
import 'cubit/weather_cubit.dart';
import 'pages/weather_search_page.dart';
import 'repository/weather_repository.dart';
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
        create: (context) => WeatherBloc(
          FakeWeatherRepository(),
        ),
        child: WeatherSearchPage(),
      ),
    );
  }
}
