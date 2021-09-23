import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable(explicitToJson: true)
class Weather {
  final int id;

  @JsonKey(name: "main")
  final String title;

  final String description;

  final String icon;

  Weather({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });

  String get smallIconUrl => "https://openweathermap.org/img/wn/$icon.png";
  String get mediumIconUrl => "https://openweathermap.org/img/wn/$icon@2x.png";
  String get largeIconUrl => "https://openweathermap.org/img/wn/$icon@4x.png";

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
