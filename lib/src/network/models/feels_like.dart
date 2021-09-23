import 'package:json_annotation/json_annotation.dart';

part 'feels_like.g.dart';

@JsonSerializable(explicitToJson: true)
class FeelsLike {
  final double day;
  final double night;
  final double eve;
  final double morn;

  FeelsLike(
      {required this.day,
      required this.night,
      required this.eve,
      required this.morn});

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}
