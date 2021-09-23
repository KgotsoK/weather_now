// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      cityInformation: json['city'] == null
          ? null
          : CityInformation.fromJson(json['city'] as Map<String, dynamic>),
      daysInForecast: json['cnt'] as int?,
      dailyForecasts: (json['list'] as List<dynamic>?)
          ?.map((e) => DayForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseCode: json['cod'] as String,
      message: json['message'],
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'city': instance.cityInformation?.toJson(),
      'cnt': instance.daysInForecast,
      'list': instance.dailyForecasts?.map((e) => e.toJson()).toList(),
      'cod': instance.responseCode,
      'message': instance.message,
    };
