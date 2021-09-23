import 'package:json_annotation/json_annotation.dart';

part 'city_information.g.dart';

@JsonSerializable(explicitToJson: true)
class CityInformation {
  final String name;
  final String country;
  final int timezone;

  CityInformation(
      {required this.name, required this.country, required this.timezone});

  factory CityInformation.fromJson(Map<String, dynamic> json) =>
      _$CityInformationFromJson(json);
  Map<String, dynamic> toJson() => _$CityInformationToJson(this);
}
