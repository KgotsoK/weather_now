// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'default':
      return _WeatherState.fromJson(json);
    case 'initial':
      return _WeatherStateInitial.fromJson(json);
    case 'fetchingWeather':
      return _WeatherStateFetchingWeather.fromJson(json);
    case 'weatherFetched':
      return _WeatherStateWeatherFetched.fromJson(json);
    case 'locationNotFound':
      return _WeatherStateLocationNotFound.fromJson(json);
    case 'errorFetchingWeather':
      return _WeatherStateErrorFetchingWeather.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WeatherState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call() {
    return const _WeatherState();
  }

  _WeatherStateInitial initial() {
    return const _WeatherStateInitial();
  }

  _WeatherStateFetchingWeather fetchingWeather() {
    return const _WeatherStateFetchingWeather();
  }

  _WeatherStateWeatherFetched weatherFetched(Forecast forecast) {
    return _WeatherStateWeatherFetched(
      forecast,
    );
  }

  _WeatherStateLocationNotFound locationNotFound(String location) {
    return _WeatherStateLocationNotFound(
      location,
    );
  }

  _WeatherStateErrorFetchingWeather errorFetchingWeather() {
    return const _WeatherStateErrorFetchingWeather();
  }

  WeatherState fromJson(Map<String, Object> json) {
    return WeatherState.fromJson(json);
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;
}

/// @nodoc
@JsonSerializable()
class _$_WeatherState implements _WeatherState {
  const _$_WeatherState();

  factory _$_WeatherState.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateFromJson(json);

  @override
  String toString() {
    return 'WeatherState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState() = _$_WeatherState;

  factory _WeatherState.fromJson(Map<String, dynamic> json) =
      _$_WeatherState.fromJson;
}

/// @nodoc
abstract class _$WeatherStateInitialCopyWith<$Res> {
  factory _$WeatherStateInitialCopyWith(_WeatherStateInitial value,
          $Res Function(_WeatherStateInitial) then) =
      __$WeatherStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateInitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateInitialCopyWith<$Res> {
  __$WeatherStateInitialCopyWithImpl(
      _WeatherStateInitial _value, $Res Function(_WeatherStateInitial) _then)
      : super(_value, (v) => _then(v as _WeatherStateInitial));

  @override
  _WeatherStateInitial get _value => super._value as _WeatherStateInitial;
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateInitial implements _WeatherStateInitial {
  const _$_WeatherStateInitial();

  factory _$_WeatherStateInitial.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateInitialFromJson(json);

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateInitialToJson(this)..['runtimeType'] = 'initial';
  }
}

abstract class _WeatherStateInitial implements WeatherState {
  const factory _WeatherStateInitial() = _$_WeatherStateInitial;

  factory _WeatherStateInitial.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateInitial.fromJson;
}

/// @nodoc
abstract class _$WeatherStateFetchingWeatherCopyWith<$Res> {
  factory _$WeatherStateFetchingWeatherCopyWith(
          _WeatherStateFetchingWeather value,
          $Res Function(_WeatherStateFetchingWeather) then) =
      __$WeatherStateFetchingWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateFetchingWeatherCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateFetchingWeatherCopyWith<$Res> {
  __$WeatherStateFetchingWeatherCopyWithImpl(
      _WeatherStateFetchingWeather _value,
      $Res Function(_WeatherStateFetchingWeather) _then)
      : super(_value, (v) => _then(v as _WeatherStateFetchingWeather));

  @override
  _WeatherStateFetchingWeather get _value =>
      super._value as _WeatherStateFetchingWeather;
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateFetchingWeather implements _WeatherStateFetchingWeather {
  const _$_WeatherStateFetchingWeather();

  factory _$_WeatherStateFetchingWeather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateFetchingWeatherFromJson(json);

  @override
  String toString() {
    return 'WeatherState.fetchingWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherStateFetchingWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) {
    return fetchingWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) {
    return fetchingWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (fetchingWeather != null) {
      return fetchingWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) {
    return fetchingWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) {
    return fetchingWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (fetchingWeather != null) {
      return fetchingWeather(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateFetchingWeatherToJson(this)
      ..['runtimeType'] = 'fetchingWeather';
  }
}

abstract class _WeatherStateFetchingWeather implements WeatherState {
  const factory _WeatherStateFetchingWeather() = _$_WeatherStateFetchingWeather;

  factory _WeatherStateFetchingWeather.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateFetchingWeather.fromJson;
}

/// @nodoc
abstract class _$WeatherStateWeatherFetchedCopyWith<$Res> {
  factory _$WeatherStateWeatherFetchedCopyWith(
          _WeatherStateWeatherFetched value,
          $Res Function(_WeatherStateWeatherFetched) then) =
      __$WeatherStateWeatherFetchedCopyWithImpl<$Res>;
  $Res call({Forecast forecast});
}

/// @nodoc
class __$WeatherStateWeatherFetchedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateWeatherFetchedCopyWith<$Res> {
  __$WeatherStateWeatherFetchedCopyWithImpl(_WeatherStateWeatherFetched _value,
      $Res Function(_WeatherStateWeatherFetched) _then)
      : super(_value, (v) => _then(v as _WeatherStateWeatherFetched));

  @override
  _WeatherStateWeatherFetched get _value =>
      super._value as _WeatherStateWeatherFetched;

  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(_WeatherStateWeatherFetched(
      forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateWeatherFetched implements _WeatherStateWeatherFetched {
  const _$_WeatherStateWeatherFetched(this.forecast);

  factory _$_WeatherStateWeatherFetched.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateWeatherFetchedFromJson(json);

  @override
  final Forecast forecast;

  @override
  String toString() {
    return 'WeatherState.weatherFetched(forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherStateWeatherFetched &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forecast);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateWeatherFetchedCopyWith<_WeatherStateWeatherFetched>
      get copyWith => __$WeatherStateWeatherFetchedCopyWithImpl<
          _WeatherStateWeatherFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) {
    return weatherFetched(forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) {
    return weatherFetched?.call(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (weatherFetched != null) {
      return weatherFetched(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) {
    return weatherFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) {
    return weatherFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (weatherFetched != null) {
      return weatherFetched(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateWeatherFetchedToJson(this)
      ..['runtimeType'] = 'weatherFetched';
  }
}

abstract class _WeatherStateWeatherFetched implements WeatherState {
  const factory _WeatherStateWeatherFetched(Forecast forecast) =
      _$_WeatherStateWeatherFetched;

  factory _WeatherStateWeatherFetched.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateWeatherFetched.fromJson;

  Forecast get forecast => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherStateWeatherFetchedCopyWith<_WeatherStateWeatherFetched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherStateLocationNotFoundCopyWith<$Res> {
  factory _$WeatherStateLocationNotFoundCopyWith(
          _WeatherStateLocationNotFound value,
          $Res Function(_WeatherStateLocationNotFound) then) =
      __$WeatherStateLocationNotFoundCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class __$WeatherStateLocationNotFoundCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLocationNotFoundCopyWith<$Res> {
  __$WeatherStateLocationNotFoundCopyWithImpl(
      _WeatherStateLocationNotFound _value,
      $Res Function(_WeatherStateLocationNotFound) _then)
      : super(_value, (v) => _then(v as _WeatherStateLocationNotFound));

  @override
  _WeatherStateLocationNotFound get _value =>
      super._value as _WeatherStateLocationNotFound;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_WeatherStateLocationNotFound(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateLocationNotFound implements _WeatherStateLocationNotFound {
  const _$_WeatherStateLocationNotFound(this.location);

  factory _$_WeatherStateLocationNotFound.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateLocationNotFoundFromJson(json);

  @override
  final String location;

  @override
  String toString() {
    return 'WeatherState.locationNotFound(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherStateLocationNotFound &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateLocationNotFoundCopyWith<_WeatherStateLocationNotFound>
      get copyWith => __$WeatherStateLocationNotFoundCopyWithImpl<
          _WeatherStateLocationNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) {
    return locationNotFound(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) {
    return locationNotFound?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (locationNotFound != null) {
      return locationNotFound(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) {
    return locationNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) {
    return locationNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (locationNotFound != null) {
      return locationNotFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateLocationNotFoundToJson(this)
      ..['runtimeType'] = 'locationNotFound';
  }
}

abstract class _WeatherStateLocationNotFound implements WeatherState {
  const factory _WeatherStateLocationNotFound(String location) =
      _$_WeatherStateLocationNotFound;

  factory _WeatherStateLocationNotFound.fromJson(Map<String, dynamic> json) =
      _$_WeatherStateLocationNotFound.fromJson;

  String get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherStateLocationNotFoundCopyWith<_WeatherStateLocationNotFound>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherStateErrorFetchingWeatherCopyWith<$Res> {
  factory _$WeatherStateErrorFetchingWeatherCopyWith(
          _WeatherStateErrorFetchingWeather value,
          $Res Function(_WeatherStateErrorFetchingWeather) then) =
      __$WeatherStateErrorFetchingWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateErrorFetchingWeatherCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateErrorFetchingWeatherCopyWith<$Res> {
  __$WeatherStateErrorFetchingWeatherCopyWithImpl(
      _WeatherStateErrorFetchingWeather _value,
      $Res Function(_WeatherStateErrorFetchingWeather) _then)
      : super(_value, (v) => _then(v as _WeatherStateErrorFetchingWeather));

  @override
  _WeatherStateErrorFetchingWeather get _value =>
      super._value as _WeatherStateErrorFetchingWeather;
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStateErrorFetchingWeather
    implements _WeatherStateErrorFetchingWeather {
  const _$_WeatherStateErrorFetchingWeather();

  factory _$_WeatherStateErrorFetchingWeather.fromJson(
          Map<String, dynamic> json) =>
      _$$_WeatherStateErrorFetchingWeatherFromJson(json);

  @override
  String toString() {
    return 'WeatherState.errorFetchingWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherStateErrorFetchingWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() fetchingWeather,
    required TResult Function(Forecast forecast) weatherFetched,
    required TResult Function(String location) locationNotFound,
    required TResult Function() errorFetchingWeather,
  }) {
    return errorFetchingWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
  }) {
    return errorFetchingWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? fetchingWeather,
    TResult Function(Forecast forecast)? weatherFetched,
    TResult Function(String location)? locationNotFound,
    TResult Function()? errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (errorFetchingWeather != null) {
      return errorFetchingWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherState value) $default, {
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateFetchingWeather value)
        fetchingWeather,
    required TResult Function(_WeatherStateWeatherFetched value) weatherFetched,
    required TResult Function(_WeatherStateLocationNotFound value)
        locationNotFound,
    required TResult Function(_WeatherStateErrorFetchingWeather value)
        errorFetchingWeather,
  }) {
    return errorFetchingWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
  }) {
    return errorFetchingWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherState value)? $default, {
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateFetchingWeather value)? fetchingWeather,
    TResult Function(_WeatherStateWeatherFetched value)? weatherFetched,
    TResult Function(_WeatherStateLocationNotFound value)? locationNotFound,
    TResult Function(_WeatherStateErrorFetchingWeather value)?
        errorFetchingWeather,
    required TResult orElse(),
  }) {
    if (errorFetchingWeather != null) {
      return errorFetchingWeather(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateErrorFetchingWeatherToJson(this)
      ..['runtimeType'] = 'errorFetchingWeather';
  }
}

abstract class _WeatherStateErrorFetchingWeather implements WeatherState {
  const factory _WeatherStateErrorFetchingWeather() =
      _$_WeatherStateErrorFetchingWeather;

  factory _WeatherStateErrorFetchingWeather.fromJson(
      Map<String, dynamic> json) = _$_WeatherStateErrorFetchingWeather.fromJson;
}
