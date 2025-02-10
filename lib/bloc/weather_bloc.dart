import 'package:ghimah/bloc/weather_event.dart';
import 'package:ghimah/bloc/weather_state.dart';
import 'package:ghimah/repositories/weather_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepo;
  WeatherBloc(this.weatherRepo) : super(WeatherInitState()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoadingState());
      try {
        final weatherData = await weatherRepo.getWeather(event.city);
        emit(WeatherSuccessState(weatherData));
      } catch (e) {
        emit(WeatherFailureState(e.toString()));
      }
    });
  }
}
