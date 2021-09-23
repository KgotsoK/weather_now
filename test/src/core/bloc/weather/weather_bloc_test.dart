import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_now/src/core/bloc/weather/weather_cubit.dart';
import 'package:weather_now/src/core/bloc/weather/weather_state.dart';
import 'package:weather_now/src/core/repositories/weather_repository.dart';
import 'package:weather_now/src/network/models/forecast.dart';

void main() async {
  const String searchQueryValid = "Centurion";
  const String searchQueryYieldNotFound = "Alice's Wonderland";
  const String searchQueryGenericError = "Orania";

  final Forecast validResponse =
      Forecast(responseCode: "200", message: "exists");
  final RequestOptions options = RequestOptions(path: "");
  final DioError notFoundResponse = DioError(
      requestOptions: options,
      response:
          Response(requestOptions: options, statusCode: HttpStatus.notFound));
  final DioError genericError = DioError(
      requestOptions: options,
      response: Response(
          requestOptions: options, statusCode: HttpStatus.internalServerError));

  final WeatherRepository _weatherRepository = MockWeatherRepository();

  group('WeatherCubit', () {
    blocTest<WeatherCubit, WeatherState>('emits [] when nothing is done',
        build: () => WeatherCubit(_weatherRepository),
        expect: () => [],
        verify: (cubit) {
          verifyNever(() => _weatherRepository.getSevenDayForecast(any()));
        });

    blocTest<WeatherCubit, WeatherState>(
        'emits [WeatherState.initial when initialise method is called.',
        build: () => WeatherCubit(_weatherRepository),
        act: (cubit) => cubit.initialise(),
        expect: () => [
              const WeatherState.initial(),
            ],
        verify: (cubit) {
          verifyNever(() => _weatherRepository.getSevenDayForecast(any()));
        });

    blocTest<WeatherCubit, WeatherState>(
        'emits [WeatherState.fetchingWeather, WeatherState.weatherFetched(Weather)] when call to fetch weather is successful.',
        setUp: () {
          when(() => _weatherRepository.getSevenDayForecast(searchQueryValid))
              .thenAnswer((_) => Future.value(validResponse));
        },
        build: () => WeatherCubit(_weatherRepository),
        act: (cubit) => cubit.getSevenDayForecast(searchQueryValid),
        expect: () => [
              const WeatherState.fetchingWeather(),
              WeatherState.weatherFetched(validResponse)
            ],
        verify: (cubit) {
          verify(() => _weatherRepository.getSevenDayForecast(any())).called(1);
        });

    blocTest<WeatherCubit, WeatherState>(
        'emits [WeatherState.fetchingWeather, WeatherState.locationNotFound(String)] when the city used in query does not exist.',
        setUp: () {
          when(() => _weatherRepository.getSevenDayForecast(
              searchQueryYieldNotFound)).thenThrow(notFoundResponse);
        },
        build: () => WeatherCubit(_weatherRepository),
        act: (cubit) => cubit.getSevenDayForecast(searchQueryYieldNotFound),
        expect: () => [
              const WeatherState.fetchingWeather(),
              const WeatherState.locationNotFound(searchQueryYieldNotFound)
            ],
        verify: (cubit) {
          verify(() => _weatherRepository.getSevenDayForecast(any())).called(1);
        });

    blocTest<WeatherCubit, WeatherState>(
        'emits [WeatherState.fetchingWeather, WeatherState.errorFetchingWeather] when any unhandled exception is thrown.',
        setUp: () {
          when(() => _weatherRepository.getSevenDayForecast(
              searchQueryGenericError)).thenThrow(genericError);
        },
        build: () => WeatherCubit(_weatherRepository),
        act: (cubit) => cubit.getSevenDayForecast(searchQueryGenericError),
        expect: () => [
              const WeatherState.fetchingWeather(),
              const WeatherState.errorFetchingWeather()
            ],
        verify: (cubit) {
          verify(() => _weatherRepository.getSevenDayForecast(any())).called(1);
        });
  });
}

class MockWeatherRepository extends Mock implements WeatherRepository {}
