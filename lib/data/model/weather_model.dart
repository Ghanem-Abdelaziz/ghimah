class Weather {
  final String cityName;
  final double temperature;
  final int humidity;
  final String description;
  Weather({
    required this.cityName,
    required this.temperature,
    required this.humidity,
    required this.description,
  });
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      humidity: json['main']['humidity'],
      description: json['weather'][0]['description'],
    );
  }
}
