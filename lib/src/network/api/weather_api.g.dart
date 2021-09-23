// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherApi implements WeatherApi {
  _WeatherApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://community-open-weather-map.p.rapidapi.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Forecast> getWeather(
      {required search, required units, required days}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': search,
      r'units': units,
      r'count': days
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Forecast>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/forecast/daily',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Forecast.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
