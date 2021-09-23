// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../network/api/weather_api.dart' as _i4;
import 'bloc/weather/weather_cubit.dart' as _i7;
import 'dependency_injection.dart' as _i8;
import 'repositories/weather_repository.dart' as _i5;
import 'repositories/weather_repository_impl.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final weatherModule = _$WeatherModule();
  gh.singleton<_i3.Dio>(weatherModule.networkClient());
  gh.singleton<_i4.WeatherApi>(weatherModule.weatherApi(get<_i3.Dio>()));
  gh.singleton<_i5.WeatherRepository>(
      _i6.WeatherRepositoryImpl(get<_i4.WeatherApi>()));
  gh.factory<_i7.WeatherCubit>(
      () => _i7.WeatherCubit(get<_i5.WeatherRepository>()));
  return get;
}

class _$WeatherModule extends _i8.WeatherModule {}
