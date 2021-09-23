// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityInformation _$CityInformationFromJson(Map<String, dynamic> json) =>
    CityInformation(
      name: json['name'] as String,
      country: json['country'] as String,
      timezone: json['timezone'] as int,
    );

Map<String, dynamic> _$CityInformationToJson(CityInformation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'timezone': instance.timezone,
    };
