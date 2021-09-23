import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_now/src/core/bloc/weather/weather_state.dart';
import 'package:weather_now/src/core/repositories/weather_repository.dart';
import 'package:weather_now/src/network/models/forecast.dart';

@injectable
class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherCubit(this._weatherRepository) : super(const WeatherState.initial());

  Future<void> getSevenDayForecast(String location) async {
    try {
      emit(const WeatherState.fetchingWeather());
      Forecast forecast =
          await _weatherRepository.getSevenDayForecast(location);
      emit(WeatherState.weatherFetched(forecast));
    } catch (exception) {
      _onWeatherFetchError(exception, location);
    }
  }

  void _onWeatherFetchError(Object e, String errorQuery) {
    if (e is DioError &&
        e.response != null &&
        e.response!.statusCode == HttpStatus.notFound) {
      emit(WeatherState.locationNotFound(errorQuery));
    } else {
      emit(const WeatherState.errorFetchingWeather());
    }
  }

  void initialise(){
    emit(const WeatherState.initial());
  }
}
