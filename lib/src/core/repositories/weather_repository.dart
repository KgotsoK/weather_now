import 'package:weather_now/src/network/models/forecast.dart';

abstract class WeatherRepository {
  Future<Forecast> getSevenDayForecast(String location);
}
