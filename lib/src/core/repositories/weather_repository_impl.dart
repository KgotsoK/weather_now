import 'package:injectable/injectable.dart';
import 'package:weather_now/src/core/repositories/weather_repository.dart';
import 'package:weather_now/src/network/api/weather_api.dart';
import 'package:weather_now/src/network/models/forecast.dart';

@Singleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepositoryImpl(this._weatherApi);

  @override
  Future<Forecast> getSevenDayForecast(String location) async {
    Forecast forecast = await _weatherApi.getWeather(
        search: location, units: "metric", days: 7);
    return forecast;
  }
}
