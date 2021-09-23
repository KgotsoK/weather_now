import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:weather_now/src/network/models/forecast.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: "https://community-open-weather-map.p.rapidapi.com")
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET("/forecast/daily")
  Future<Forecast> getWeather(
      {@Query("q") required String search,
      @Query("units") required String units,
      @Query("count") required int days});
}
