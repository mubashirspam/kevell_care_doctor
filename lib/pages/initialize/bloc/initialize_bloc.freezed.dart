// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initialize_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitializeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool connectionstatus) contectionChanged,
    required TResult Function() connectionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool connectionstatus)? contectionChanged,
    TResult? Function()? connectionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool connectionstatus)? contectionChanged,
    TResult Function()? connectionCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContectionChanged value) contectionChanged,
    required TResult Function(_ConnectionCheck value) connectionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContectionChanged value)? contectionChanged,
    TResult? Function(_ConnectionCheck value)? connectionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContectionChanged value)? contectionChanged,
    TResult Function(_ConnectionCheck value)? connectionCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeEventCopyWith<$Res> {
  factory $InitializeEventCopyWith(
          InitializeEvent value, $Res Function(InitializeEvent) then) =
      _$InitializeEventCopyWithImpl<$Res, InitializeEvent>;
}

/// @nodoc
class _$InitializeEventCopyWithImpl<$Res, $Val extends InitializeEvent>
    implements $InitializeEventCopyWith<$Res> {
  _$InitializeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$InitializeEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'InitializeEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool connectionstatus) contectionChanged,
    required TResult Function() connectionCheck,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool connectionstatus)? contectionChanged,
    TResult? Function()? connectionCheck,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool connectionstatus)? contectionChanged,
    TResult Function()? connectionCheck,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContectionChanged value) contectionChanged,
    required TResult Function(_ConnectionCheck value) connectionCheck,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContectionChanged value)? contectionChanged,
    TResult? Function(_ConnectionCheck value)? connectionCheck,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContectionChanged value)? contectionChanged,
    TResult Function(_ConnectionCheck value)? connectionCheck,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InitializeEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ContectionChangedImplCopyWith<$Res> {
  factory _$$ContectionChangedImplCopyWith(_$ContectionChangedImpl value,
          $Res Function(_$ContectionChangedImpl) then) =
      __$$ContectionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool connectionstatus});
}

/// @nodoc
class __$$ContectionChangedImplCopyWithImpl<$Res>
    extends _$InitializeEventCopyWithImpl<$Res, _$ContectionChangedImpl>
    implements _$$ContectionChangedImplCopyWith<$Res> {
  __$$ContectionChangedImplCopyWithImpl(_$ContectionChangedImpl _value,
      $Res Function(_$ContectionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionstatus = null,
  }) {
    return _then(_$ContectionChangedImpl(
      connectionstatus: null == connectionstatus
          ? _value.connectionstatus
          : connectionstatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ContectionChangedImpl implements _ContectionChanged {
  const _$ContectionChangedImpl({required this.connectionstatus});

  @override
  final bool connectionstatus;

  @override
  String toString() {
    return 'InitializeEvent.contectionChanged(connectionstatus: $connectionstatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContectionChangedImpl &&
            (identical(other.connectionstatus, connectionstatus) ||
                other.connectionstatus == connectionstatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionstatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContectionChangedImplCopyWith<_$ContectionChangedImpl> get copyWith =>
      __$$ContectionChangedImplCopyWithImpl<_$ContectionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool connectionstatus) contectionChanged,
    required TResult Function() connectionCheck,
  }) {
    return contectionChanged(connectionstatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool connectionstatus)? contectionChanged,
    TResult? Function()? connectionCheck,
  }) {
    return contectionChanged?.call(connectionstatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool connectionstatus)? contectionChanged,
    TResult Function()? connectionCheck,
    required TResult orElse(),
  }) {
    if (contectionChanged != null) {
      return contectionChanged(connectionstatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContectionChanged value) contectionChanged,
    required TResult Function(_ConnectionCheck value) connectionCheck,
  }) {
    return contectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContectionChanged value)? contectionChanged,
    TResult? Function(_ConnectionCheck value)? connectionCheck,
  }) {
    return contectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContectionChanged value)? contectionChanged,
    TResult Function(_ConnectionCheck value)? connectionCheck,
    required TResult orElse(),
  }) {
    if (contectionChanged != null) {
      return contectionChanged(this);
    }
    return orElse();
  }
}

abstract class _ContectionChanged implements InitializeEvent {
  const factory _ContectionChanged({required final bool connectionstatus}) =
      _$ContectionChangedImpl;

  bool get connectionstatus;
  @JsonKey(ignore: true)
  _$$ContectionChangedImplCopyWith<_$ContectionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionCheckImplCopyWith<$Res> {
  factory _$$ConnectionCheckImplCopyWith(_$ConnectionCheckImpl value,
          $Res Function(_$ConnectionCheckImpl) then) =
      __$$ConnectionCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionCheckImplCopyWithImpl<$Res>
    extends _$InitializeEventCopyWithImpl<$Res, _$ConnectionCheckImpl>
    implements _$$ConnectionCheckImplCopyWith<$Res> {
  __$$ConnectionCheckImplCopyWithImpl(
      _$ConnectionCheckImpl _value, $Res Function(_$ConnectionCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionCheckImpl implements _ConnectionCheck {
  const _$ConnectionCheckImpl();

  @override
  String toString() {
    return 'InitializeEvent.connectionCheck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool connectionstatus) contectionChanged,
    required TResult Function() connectionCheck,
  }) {
    return connectionCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool connectionstatus)? contectionChanged,
    TResult? Function()? connectionCheck,
  }) {
    return connectionCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool connectionstatus)? contectionChanged,
    TResult Function()? connectionCheck,
    required TResult orElse(),
  }) {
    if (connectionCheck != null) {
      return connectionCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContectionChanged value) contectionChanged,
    required TResult Function(_ConnectionCheck value) connectionCheck,
  }) {
    return connectionCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContectionChanged value)? contectionChanged,
    TResult? Function(_ConnectionCheck value)? connectionCheck,
  }) {
    return connectionCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContectionChanged value)? contectionChanged,
    TResult Function(_ConnectionCheck value)? connectionCheck,
    required TResult orElse(),
  }) {
    if (connectionCheck != null) {
      return connectionCheck(this);
    }
    return orElse();
  }
}

abstract class _ConnectionCheck implements InitializeEvent {
  const factory _ConnectionCheck() = _$ConnectionCheckImpl;
}

/// @nodoc
mixin _$InitializeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isToken => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get connectionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitializeStateCopyWith<InitializeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeStateCopyWith<$Res> {
  factory $InitializeStateCopyWith(
          InitializeState value, $Res Function(InitializeState) then) =
      _$InitializeStateCopyWithImpl<$Res, InitializeState>;
  @useResult
  $Res call(
      {bool isLoading, bool isToken, bool isVerified, bool connectionStatus});
}

/// @nodoc
class _$InitializeStateCopyWithImpl<$Res, $Val extends InitializeState>
    implements $InitializeStateCopyWith<$Res> {
  _$InitializeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isToken = null,
    Object? isVerified = null,
    Object? connectionStatus = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isToken: null == isToken
          ? _value.isToken
          : isToken // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializeStateImplCopyWith<$Res>
    implements $InitializeStateCopyWith<$Res> {
  factory _$$InitializeStateImplCopyWith(_$InitializeStateImpl value,
          $Res Function(_$InitializeStateImpl) then) =
      __$$InitializeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isToken, bool isVerified, bool connectionStatus});
}

/// @nodoc
class __$$InitializeStateImplCopyWithImpl<$Res>
    extends _$InitializeStateCopyWithImpl<$Res, _$InitializeStateImpl>
    implements _$$InitializeStateImplCopyWith<$Res> {
  __$$InitializeStateImplCopyWithImpl(
      _$InitializeStateImpl _value, $Res Function(_$InitializeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isToken = null,
    Object? isVerified = null,
    Object? connectionStatus = null,
  }) {
    return _then(_$InitializeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isToken: null == isToken
          ? _value.isToken
          : isToken // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitializeStateImpl implements _InitializeState {
  const _$InitializeStateImpl(
      {required this.isLoading,
      required this.isToken,
      required this.isVerified,
      required this.connectionStatus});

  @override
  final bool isLoading;
  @override
  final bool isToken;
  @override
  final bool isVerified;
  @override
  final bool connectionStatus;

  @override
  String toString() {
    return 'InitializeState(isLoading: $isLoading, isToken: $isToken, isVerified: $isVerified, connectionStatus: $connectionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isToken, isToken) || other.isToken == isToken) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isToken, isVerified, connectionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeStateImplCopyWith<_$InitializeStateImpl> get copyWith =>
      __$$InitializeStateImplCopyWithImpl<_$InitializeStateImpl>(
          this, _$identity);
}

abstract class _InitializeState implements InitializeState {
  const factory _InitializeState(
      {required final bool isLoading,
      required final bool isToken,
      required final bool isVerified,
      required final bool connectionStatus}) = _$InitializeStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isToken;
  @override
  bool get isVerified;
  @override
  bool get connectionStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitializeStateImplCopyWith<_$InitializeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
