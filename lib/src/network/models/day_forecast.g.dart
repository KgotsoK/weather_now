// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayForecast _$DayForecastFromJson(Map<String, dynamic> json) => DayForecast(
      date: json['dt'] as int,
      temperatures: Temperatures.fromJson(json['temp'] as Map<String, dynamic>),
      feelsLike:
          Temperatures.fromJson(json['feels_like'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      speed: (json['speed'] as num).toDouble(),
      clouds: json['clouds'] as int,
    );

Map<String, dynamic> _$DayForecastToJson(DayForecast instance) =>
    <String, dynamic>{
      'dt': instance.date,
      'temp': instance.temperatures.toJson(),
      'feels_like': instance.feelsLike.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'speed': instance.speed,
      'clouds': instance.clouds,
    };
