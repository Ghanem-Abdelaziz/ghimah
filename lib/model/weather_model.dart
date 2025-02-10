class Weather {
  final String cityName;
  final double tempreture;
  final String condition;
  Weather({
    required this.cityName,
    required this.tempreture,
    required this.condition,
  });
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      tempreture: json['main']['temp'],
      condition: json['weather'][0]['main'],
    );
  }
}
