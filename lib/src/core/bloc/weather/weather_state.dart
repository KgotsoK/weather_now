import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_now/src/network/models/forecast.dart';

part 'weather_state.freezed.dart';
part 'weather_state.g.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState() = _WeatherState;
  const factory WeatherState.initial() = _WeatherStateInitial;

  const factory WeatherState.fetchingWeather() = _WeatherStateFetchingWeather;
  const factory WeatherState.weatherFetched(Forecast forecast) =
      _WeatherStateWeatherFetched;
  const factory WeatherState.locationNotFound(String location) = _WeatherStateLocationNotFound;
  const factory WeatherState.errorFetchingWeather() =
      _WeatherStateErrorFetchingWeather;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);
}
