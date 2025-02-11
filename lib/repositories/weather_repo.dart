import 'package:dio/dio.dart';
import 'package:ghimah/utils/constants.dart';
import '../model/weather_model.dart';

class WeatherRepository {
  final Dio _dio = Dio();
  Future<Weather> getWeather(String city) async {
    final response = await _dio.get(
      Constants.baseUrl,
      queryParameters: {
        'q': city,
        'appid': Constants.apiKey,
        'units': 'metric',
      },
    );
    return Weather.fromJson(response.data);
  }
}
