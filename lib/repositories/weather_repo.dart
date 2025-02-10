import 'package:dio/dio.dart';
import 'package:ghimah/utils/constants.dart';
import '../model/weather_model.dart';

class WeatherRepository {
  final Dio _dio = Dio();
  Future<Weather> getWeather(String city) async {
    try {
      final response = await _dio.get(
        Constants.baseUrl,
        queryParameters: {
          'q': city,
          'appid': Constants.apiKey,
        },
      );
      return Weather.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
  // final Dio _dio = Dio();
  // final String _baseUrl = 'https://api.openweathermap.org/data/2.5';
  // final String _apiKey =
  //     'YOUR_API_KEY'; // Replace with your OpenWeatherMap API key

  // Future<Weather> getWeather(String city) async {
  //   try {
  //     final response = await _dio.get(
  //       '$_baseUrl/weather',
  //       queryParameters: {
  //         'q': city,
  //         'appid': _apiKey,
  //         'units': 'metric',
  //       },
  //     );
  //     return Weather.fromJson(response.data);
  //   } catch (e) {
  //     throw Exception('Failed to fetch weather data: $e');
  //   }
  // }