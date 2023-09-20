// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainFailureCopyWith<MainFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientFailureCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_ClientFailureCopyWith(
          _$_ClientFailure value, $Res Function(_$_ClientFailure) then) =
      __$$_ClientFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ClientFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_ClientFailure>
    implements _$$_ClientFailureCopyWith<$Res> {
  __$$_ClientFailureCopyWithImpl(
      _$_ClientFailure _value, $Res Function(_$_ClientFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ClientFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ClientFailure implements _ClientFailure {
  const _$_ClientFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'MainFailure.clientFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFailureCopyWith<_$_ClientFailure> get copyWith =>
      __$$_ClientFailureCopyWithImpl<_$_ClientFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return clientFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return clientFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements MainFailure {
  const factory _ClientFailure({final String? message}) = _$_ClientFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFailureCopyWith<_$_ClientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'MainFailure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure({final String? message}) = _$_ServerFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoDataFoundCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_NoDataFoundCopyWith(
          _$_NoDataFound value, $Res Function(_$_NoDataFound) then) =
      __$$_NoDataFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NoDataFoundCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_NoDataFound>
    implements _$$_NoDataFoundCopyWith<$Res> {
  __$$_NoDataFoundCopyWithImpl(
      _$_NoDataFound _value, $Res Function(_$_NoDataFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NoDataFound(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoDataFound implements _NoDataFound {
  const _$_NoDataFound({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.noDatafound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoDataFound &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoDataFoundCopyWith<_$_NoDataFound> get copyWith =>
      __$$_NoDataFoundCopyWithImpl<_$_NoDataFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return noDatafound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return noDatafound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (noDatafound != null) {
      return noDatafound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return noDatafound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return noDatafound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (noDatafound != null) {
      return noDatafound(this);
    }
    return orElse();
  }
}

abstract class _NoDataFound implements MainFailure {
  const factory _NoDataFound({required final String message}) = _$_NoDataFound;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoDataFoundCopyWith<_$_NoDataFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized value, $Res Function(_$_Unauthorized) then) =
      __$$_UnauthorizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_Unauthorized>
    implements _$$_UnauthorizedCopyWith<$Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized _value, $Res Function(_$_Unauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Unauthorized(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unauthorized &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthorizedCopyWith<_$_Unauthorized> get copyWith =>
      __$$_UnauthorizedCopyWithImpl<_$_Unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements MainFailure {
  const factory _Unauthorized({required final String message}) =
      _$_Unauthorized;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnauthorizedCopyWith<_$_Unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForbiddenCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_ForbiddenCopyWith(
          _$_Forbidden value, $Res Function(_$_Forbidden) then) =
      __$$_ForbiddenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ForbiddenCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_Forbidden>
    implements _$$_ForbiddenCopyWith<$Res> {
  __$$_ForbiddenCopyWithImpl(
      _$_Forbidden _value, $Res Function(_$_Forbidden) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Forbidden(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Forbidden implements _Forbidden {
  const _$_Forbidden({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.forbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forbidden &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForbiddenCopyWith<_$_Forbidden> get copyWith =>
      __$$_ForbiddenCopyWithImpl<_$_Forbidden>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _Forbidden implements MainFailure {
  const factory _Forbidden({required final String message}) = _$_Forbidden;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ForbiddenCopyWith<_$_Forbidden> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServiceUnavailableCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_ServiceUnavailableCopyWith(_$_ServiceUnavailable value,
          $Res Function(_$_ServiceUnavailable) then) =
      __$$_ServiceUnavailableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServiceUnavailableCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_ServiceUnavailable>
    implements _$$_ServiceUnavailableCopyWith<$Res> {
  __$$_ServiceUnavailableCopyWithImpl(
      _$_ServiceUnavailable _value, $Res Function(_$_ServiceUnavailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServiceUnavailable(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServiceUnavailable implements _ServiceUnavailable {
  const _$_ServiceUnavailable({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.serviceUnavailable(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceUnavailable &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceUnavailableCopyWith<_$_ServiceUnavailable> get copyWith =>
      __$$_ServiceUnavailableCopyWithImpl<_$_ServiceUnavailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return serviceUnavailable(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return serviceUnavailable?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return serviceUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class _ServiceUnavailable implements MainFailure {
  const factory _ServiceUnavailable({required final String message}) =
      _$_ServiceUnavailable;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceUnavailableCopyWith<_$_ServiceUnavailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownFailureCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$_UnknownFailureCopyWith(
          _$_UnknownFailure value, $Res Function(_$_UnknownFailure) then) =
      __$$_UnknownFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnknownFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_UnknownFailure>
    implements _$$_UnknownFailureCopyWith<$Res> {
  __$$_UnknownFailureCopyWithImpl(
      _$_UnknownFailure _value, $Res Function(_$_UnknownFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnknownFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnknownFailure implements _UnknownFailure {
  const _$_UnknownFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnknownFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownFailureCopyWith<_$_UnknownFailure> get copyWith =>
      __$$_UnknownFailureCopyWithImpl<_$_UnknownFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) clientFailure,
    required TResult Function(String? message) serverFailure,
    required TResult Function(String message) noDatafound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) serviceUnavailable,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? clientFailure,
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String message)? noDatafound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? serviceUnavailable,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? clientFailure,
    TResult Function(String? message)? serverFailure,
    TResult Function(String message)? noDatafound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? serviceUnavailable,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NoDataFound value) noDatafound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ServiceUnavailable value) serviceUnavailable,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NoDataFound value)? noDatafound,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(_UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NoDataFound value)? noDatafound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ServiceUnavailable value)? serviceUnavailable,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure implements MainFailure {
  const factory _UnknownFailure({required final String message}) =
      _$_UnknownFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownFailureCopyWith<_$_UnknownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
