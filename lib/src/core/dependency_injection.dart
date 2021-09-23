import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_now/src/network/api/weather_api.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);

@module
abstract class WeatherModule {
  @singleton
  Dio networkClient() {
    Dio dio = Dio();
    dio.options.headers["x-rapidapi-host"] =
        "community-open-weather-map.p.rapidapi.com";
    dio.options.headers["x-rapidapi-key"] = "YOUR-KEY-HERE";
    dio.interceptors.add(PrettyDioLogger());
    return dio;
  }

  @singleton
  WeatherApi weatherApi(Dio dio) {
    return WeatherApi(dio);
  }
}
