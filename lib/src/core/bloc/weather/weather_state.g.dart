// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherState _$$_WeatherStateFromJson(Map<String, dynamic> json) =>
    _$_WeatherState();

Map<String, dynamic> _$$_WeatherStateToJson(_$_WeatherState instance) =>
    <String, dynamic>{};

_$_WeatherStateInitial _$$_WeatherStateInitialFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherStateInitial();

Map<String, dynamic> _$$_WeatherStateInitialToJson(
        _$_WeatherStateInitial instance) =>
    <String, dynamic>{};

_$_WeatherStateFetchingWeather _$$_WeatherStateFetchingWeatherFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherStateFetchingWeather();

Map<String, dynamic> _$$_WeatherStateFetchingWeatherToJson(
        _$_WeatherStateFetchingWeather instance) =>
    <String, dynamic>{};

_$_WeatherStateWeatherFetched _$$_WeatherStateWeatherFetchedFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherStateWeatherFetched(
      Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherStateWeatherFetchedToJson(
        _$_WeatherStateWeatherFetched instance) =>
    <String, dynamic>{
      'forecast': instance.forecast,
    };

_$_WeatherStateLocationNotFound _$$_WeatherStateLocationNotFoundFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherStateLocationNotFound(
      json['location'] as String,
    );

Map<String, dynamic> _$$_WeatherStateLocationNotFoundToJson(
        _$_WeatherStateLocationNotFound instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_WeatherStateErrorFetchingWeather
    _$$_WeatherStateErrorFetchingWeatherFromJson(Map<String, dynamic> json) =>
        _$_WeatherStateErrorFetchingWeather();

Map<String, dynamic> _$$_WeatherStateErrorFetchingWeatherToJson(
        _$_WeatherStateErrorFetchingWeather instance) =>
    <String, dynamic>{};
