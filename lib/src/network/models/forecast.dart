import 'package:json_annotation/json_annotation.dart';

import 'city_information.dart';
import 'day_forecast.dart';

part 'forecast.g.dart';

@JsonSerializable(explicitToJson: true)
class Forecast {
  @JsonKey(name: "city")
  final CityInformation? cityInformation;

  @JsonKey(name: "cnt")
  final int? daysInForecast;

  @JsonKey(name: "list")
  final List<DayForecast>? dailyForecasts;

  @JsonKey(name: "cod")
  final String responseCode;
  final dynamic message;

  Forecast(
      {this.cityInformation,
      this.daysInForecast,
      this.dailyForecasts,
      required this.responseCode,
      required this.message});

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}
