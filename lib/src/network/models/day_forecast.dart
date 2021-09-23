import 'package:json_annotation/json_annotation.dart';
import 'package:weather_now/src/network/models/temperatures.dart';
import 'package:weather_now/src/network/models/weather.dart';

part 'day_forecast.g.dart';

@JsonSerializable(explicitToJson: true)
class DayForecast {
  @JsonKey(name: "dt")
  final int date;

  @JsonKey(name: "temp")
  final Temperatures temperatures;

  @JsonKey(name: "feels_like")
  final Temperatures feelsLike;

  @JsonKey(name: "weather")
  final List<Weather> weather;

  final int sunrise;
  final int sunset;
  final int pressure;
  final int humidity;
  final double speed;
  final int clouds;

  DayForecast(
      {required this.date,
      required this.temperatures,
      required this.feelsLike,
      required this.weather,
      required this.sunrise,
      required this.sunset,
      required this.pressure,
      required this.humidity,
      required this.speed,
      required this.clouds});

  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(
      Duration(seconds: date).inMilliseconds);

  String get textWindSpeed => "${speed}m/s";
  String get textPressure => "${pressure}hPa";
  String get textHumidity => "$humidity%";
  String get textCloudCoverage => "$clouds%";

  factory DayForecast.fromJson(Map<String, dynamic> json) =>
      _$DayForecastFromJson(json);
  Map<String, dynamic> toJson() => _$DayForecastToJson(this);
}
