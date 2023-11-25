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
abstract class _$$ClientFailureImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ClientFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClientFailureImpl implements _ClientFailure {
  const _$ClientFailureImpl({this.message});

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
            other is _$ClientFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      __$$ClientFailureImplCopyWithImpl<_$ClientFailureImpl>(this, _$identity);

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
  const factory _ClientFailure({final String? message}) = _$ClientFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl({this.message});

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
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

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
  const factory _ServerFailure({final String? message}) = _$ServerFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataFoundImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$NoDataFoundImplCopyWith(
          _$NoDataFoundImpl value, $Res Function(_$NoDataFoundImpl) then) =
      __$$NoDataFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoDataFoundImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$NoDataFoundImpl>
    implements _$$NoDataFoundImplCopyWith<$Res> {
  __$$NoDataFoundImplCopyWithImpl(
      _$NoDataFoundImpl _value, $Res Function(_$NoDataFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoDataFoundImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataFoundImpl implements _NoDataFound {
  const _$NoDataFoundImpl({required this.message});

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
            other is _$NoDataFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataFoundImplCopyWith<_$NoDataFoundImpl> get copyWith =>
      __$$NoDataFoundImplCopyWithImpl<_$NoDataFoundImpl>(this, _$identity);

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
  const factory _NoDataFound({required final String message}) =
      _$NoDataFoundImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoDataFoundImplCopyWith<_$NoDataFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthorizedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl({required this.message});

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
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

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
      _$UnauthorizedImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$ForbiddenImplCopyWith(
          _$ForbiddenImpl value, $Res Function(_$ForbiddenImpl) then) =
      __$$ForbiddenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForbiddenImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ForbiddenImpl>
    implements _$$ForbiddenImplCopyWith<$Res> {
  __$$ForbiddenImplCopyWithImpl(
      _$ForbiddenImpl _value, $Res Function(_$ForbiddenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForbiddenImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForbiddenImpl implements _Forbidden {
  const _$ForbiddenImpl({required this.message});

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
            other is _$ForbiddenImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      __$$ForbiddenImplCopyWithImpl<_$ForbiddenImpl>(this, _$identity);

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
  const factory _Forbidden({required final String message}) = _$ForbiddenImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnavailableImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$ServiceUnavailableImplCopyWith(_$ServiceUnavailableImpl value,
          $Res Function(_$ServiceUnavailableImpl) then) =
      __$$ServiceUnavailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServiceUnavailableImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ServiceUnavailableImpl>
    implements _$$ServiceUnavailableImplCopyWith<$Res> {
  __$$ServiceUnavailableImplCopyWithImpl(_$ServiceUnavailableImpl _value,
      $Res Function(_$ServiceUnavailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServiceUnavailableImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceUnavailableImpl implements _ServiceUnavailable {
  const _$ServiceUnavailableImpl({required this.message});

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
            other is _$ServiceUnavailableImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUnavailableImplCopyWith<_$ServiceUnavailableImpl> get copyWith =>
      __$$ServiceUnavailableImplCopyWithImpl<_$ServiceUnavailableImpl>(
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
      _$ServiceUnavailableImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServiceUnavailableImplCopyWith<_$ServiceUnavailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements _UnknownFailure {
  const _$UnknownFailureImpl({required this.message});

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
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
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
      _$UnknownFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
