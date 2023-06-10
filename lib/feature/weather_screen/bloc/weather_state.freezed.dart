// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WeatherResponseModel weatherData) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WeatherResponseModel weatherData)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WeatherResponseModel weatherData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherBlocStateInitial value) initial,
    required TResult Function(WeatherBlocStateLoading value) loading,
    required TResult Function(WeatherBlocStateSuccess value) success,
    required TResult Function(WeatherBlocStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherBlocStateInitial value)? initial,
    TResult? Function(WeatherBlocStateLoading value)? loading,
    TResult? Function(WeatherBlocStateSuccess value)? success,
    TResult? Function(WeatherBlocStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherBlocStateInitial value)? initial,
    TResult Function(WeatherBlocStateLoading value)? loading,
    TResult Function(WeatherBlocStateSuccess value)? success,
    TResult Function(WeatherBlocStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBlocStateCopyWith<$Res> {
  factory $WeatherBlocStateCopyWith(
          WeatherBlocState value, $Res Function(WeatherBlocState) then) =
      _$WeatherBlocStateCopyWithImpl<$Res, WeatherBlocState>;
}

/// @nodoc
class _$WeatherBlocStateCopyWithImpl<$Res, $Val extends WeatherBlocState>
    implements $WeatherBlocStateCopyWith<$Res> {
  _$WeatherBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherBlocStateInitialCopyWith<$Res> {
  factory _$$WeatherBlocStateInitialCopyWith(_$WeatherBlocStateInitial value,
          $Res Function(_$WeatherBlocStateInitial) then) =
      __$$WeatherBlocStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherBlocStateInitialCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$WeatherBlocStateInitial>
    implements _$$WeatherBlocStateInitialCopyWith<$Res> {
  __$$WeatherBlocStateInitialCopyWithImpl(_$WeatherBlocStateInitial _value,
      $Res Function(_$WeatherBlocStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherBlocStateInitial implements WeatherBlocStateInitial {
  const _$WeatherBlocStateInitial();

  @override
  String toString() {
    return 'WeatherBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherBlocStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WeatherResponseModel weatherData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WeatherResponseModel weatherData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WeatherResponseModel weatherData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherBlocStateInitial value) initial,
    required TResult Function(WeatherBlocStateLoading value) loading,
    required TResult Function(WeatherBlocStateSuccess value) success,
    required TResult Function(WeatherBlocStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherBlocStateInitial value)? initial,
    TResult? Function(WeatherBlocStateLoading value)? loading,
    TResult? Function(WeatherBlocStateSuccess value)? success,
    TResult? Function(WeatherBlocStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherBlocStateInitial value)? initial,
    TResult Function(WeatherBlocStateLoading value)? loading,
    TResult Function(WeatherBlocStateSuccess value)? success,
    TResult Function(WeatherBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherBlocStateInitial implements WeatherBlocState {
  const factory WeatherBlocStateInitial() = _$WeatherBlocStateInitial;
}

/// @nodoc
abstract class _$$WeatherBlocStateLoadingCopyWith<$Res> {
  factory _$$WeatherBlocStateLoadingCopyWith(_$WeatherBlocStateLoading value,
          $Res Function(_$WeatherBlocStateLoading) then) =
      __$$WeatherBlocStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherBlocStateLoadingCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$WeatherBlocStateLoading>
    implements _$$WeatherBlocStateLoadingCopyWith<$Res> {
  __$$WeatherBlocStateLoadingCopyWithImpl(_$WeatherBlocStateLoading _value,
      $Res Function(_$WeatherBlocStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherBlocStateLoading implements WeatherBlocStateLoading {
  const _$WeatherBlocStateLoading();

  @override
  String toString() {
    return 'WeatherBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherBlocStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WeatherResponseModel weatherData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WeatherResponseModel weatherData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WeatherResponseModel weatherData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherBlocStateInitial value) initial,
    required TResult Function(WeatherBlocStateLoading value) loading,
    required TResult Function(WeatherBlocStateSuccess value) success,
    required TResult Function(WeatherBlocStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherBlocStateInitial value)? initial,
    TResult? Function(WeatherBlocStateLoading value)? loading,
    TResult? Function(WeatherBlocStateSuccess value)? success,
    TResult? Function(WeatherBlocStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherBlocStateInitial value)? initial,
    TResult Function(WeatherBlocStateLoading value)? loading,
    TResult Function(WeatherBlocStateSuccess value)? success,
    TResult Function(WeatherBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherBlocStateLoading implements WeatherBlocState {
  const factory WeatherBlocStateLoading() = _$WeatherBlocStateLoading;
}

/// @nodoc
abstract class _$$WeatherBlocStateSuccessCopyWith<$Res> {
  factory _$$WeatherBlocStateSuccessCopyWith(_$WeatherBlocStateSuccess value,
          $Res Function(_$WeatherBlocStateSuccess) then) =
      __$$WeatherBlocStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherResponseModel weatherData});
}

/// @nodoc
class __$$WeatherBlocStateSuccessCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$WeatherBlocStateSuccess>
    implements _$$WeatherBlocStateSuccessCopyWith<$Res> {
  __$$WeatherBlocStateSuccessCopyWithImpl(_$WeatherBlocStateSuccess _value,
      $Res Function(_$WeatherBlocStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherData = null,
  }) {
    return _then(_$WeatherBlocStateSuccess(
      weatherData: null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherResponseModel,
    ));
  }
}

/// @nodoc

class _$WeatherBlocStateSuccess implements WeatherBlocStateSuccess {
  const _$WeatherBlocStateSuccess({required this.weatherData});

  @override
  final WeatherResponseModel weatherData;

  @override
  String toString() {
    return 'WeatherBlocState.success(weatherData: $weatherData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherBlocStateSuccess &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherBlocStateSuccessCopyWith<_$WeatherBlocStateSuccess> get copyWith =>
      __$$WeatherBlocStateSuccessCopyWithImpl<_$WeatherBlocStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WeatherResponseModel weatherData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WeatherResponseModel weatherData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WeatherResponseModel weatherData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(weatherData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherBlocStateInitial value) initial,
    required TResult Function(WeatherBlocStateLoading value) loading,
    required TResult Function(WeatherBlocStateSuccess value) success,
    required TResult Function(WeatherBlocStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherBlocStateInitial value)? initial,
    TResult? Function(WeatherBlocStateLoading value)? loading,
    TResult? Function(WeatherBlocStateSuccess value)? success,
    TResult? Function(WeatherBlocStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherBlocStateInitial value)? initial,
    TResult Function(WeatherBlocStateLoading value)? loading,
    TResult Function(WeatherBlocStateSuccess value)? success,
    TResult Function(WeatherBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WeatherBlocStateSuccess implements WeatherBlocState {
  const factory WeatherBlocStateSuccess(
          {required final WeatherResponseModel weatherData}) =
      _$WeatherBlocStateSuccess;

  WeatherResponseModel get weatherData;
  @JsonKey(ignore: true)
  _$$WeatherBlocStateSuccessCopyWith<_$WeatherBlocStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherBlocStateErrorCopyWith<$Res> {
  factory _$$WeatherBlocStateErrorCopyWith(_$WeatherBlocStateError value,
          $Res Function(_$WeatherBlocStateError) then) =
      __$$WeatherBlocStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$WeatherBlocStateErrorCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$WeatherBlocStateError>
    implements _$$WeatherBlocStateErrorCopyWith<$Res> {
  __$$WeatherBlocStateErrorCopyWithImpl(_$WeatherBlocStateError _value,
      $Res Function(_$WeatherBlocStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WeatherBlocStateError(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherBlocStateError implements WeatherBlocStateError {
  const _$WeatherBlocStateError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WeatherBlocState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherBlocStateError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherBlocStateErrorCopyWith<_$WeatherBlocStateError> get copyWith =>
      __$$WeatherBlocStateErrorCopyWithImpl<_$WeatherBlocStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WeatherResponseModel weatherData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WeatherResponseModel weatherData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WeatherResponseModel weatherData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherBlocStateInitial value) initial,
    required TResult Function(WeatherBlocStateLoading value) loading,
    required TResult Function(WeatherBlocStateSuccess value) success,
    required TResult Function(WeatherBlocStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherBlocStateInitial value)? initial,
    TResult? Function(WeatherBlocStateLoading value)? loading,
    TResult? Function(WeatherBlocStateSuccess value)? success,
    TResult? Function(WeatherBlocStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherBlocStateInitial value)? initial,
    TResult Function(WeatherBlocStateLoading value)? loading,
    TResult Function(WeatherBlocStateSuccess value)? success,
    TResult Function(WeatherBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherBlocStateError implements WeatherBlocState {
  const factory WeatherBlocStateError({required final String errorMessage}) =
      _$WeatherBlocStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$WeatherBlocStateErrorCopyWith<_$WeatherBlocStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
