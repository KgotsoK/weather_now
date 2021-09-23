import 'package:json_annotation/json_annotation.dart';

part 'temperatures.g.dart';

@JsonSerializable(explicitToJson: true)
class Temperatures {
  final double? day;
  final double? min;
  final double? max;
  final double? night;
  final double? eve;
  final double? morn;

  Temperatures({this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory Temperatures.fromJson(Map<String, dynamic> json) =>
      _$TemperaturesFromJson(json);
  Map<String, dynamic> toJson() => _$TemperaturesToJson(this);
}
