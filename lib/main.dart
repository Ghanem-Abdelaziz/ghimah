import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghimah/blocs/weather_bloc.dart';
import 'package:ghimah/repositories/weather_repo.dart';
import 'package:ghimah/view/weather_page.dart';

void main() {
  runApp(const Ghimah());
}

class Ghimah extends StatelessWidget {
  const Ghimah({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(WeatherRepository()),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const WeatherPage(),
      ),
    );
  }
}
