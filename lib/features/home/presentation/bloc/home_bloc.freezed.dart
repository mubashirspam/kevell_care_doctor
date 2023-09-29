// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeStatus,
    required TResult Function() getHomeWaitingPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeStatus,
    TResult? Function()? getHomeWaitingPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeStatus,
    TResult Function()? getHomeWaitingPatient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeStatus value) getHomeStatus,
    required TResult Function(_GetHomeWaitingPatient value)
        getHomeWaitingPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeStatus value)? getHomeStatus,
    TResult? Function(_GetHomeWaitingPatient value)? getHomeWaitingPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeStatus value)? getHomeStatus,
    TResult Function(_GetHomeWaitingPatient value)? getHomeWaitingPatient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetHomeStatusCopyWith<$Res> {
  factory _$$_GetHomeStatusCopyWith(
          _$_GetHomeStatus value, $Res Function(_$_GetHomeStatus) then) =
      __$$_GetHomeStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeStatusCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetHomeStatus>
    implements _$$_GetHomeStatusCopyWith<$Res> {
  __$$_GetHomeStatusCopyWithImpl(
      _$_GetHomeStatus _value, $Res Function(_$_GetHomeStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetHomeStatus implements _GetHomeStatus {
  const _$_GetHomeStatus();

  @override
  String toString() {
    return 'HomeEvent.getHomeStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetHomeStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeStatus,
    required TResult Function() getHomeWaitingPatient,
  }) {
    return getHomeStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeStatus,
    TResult? Function()? getHomeWaitingPatient,
  }) {
    return getHomeStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeStatus,
    TResult Function()? getHomeWaitingPatient,
    required TResult orElse(),
  }) {
    if (getHomeStatus != null) {
      return getHomeStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeStatus value) getHomeStatus,
    required TResult Function(_GetHomeWaitingPatient value)
        getHomeWaitingPatient,
  }) {
    return getHomeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeStatus value)? getHomeStatus,
    TResult? Function(_GetHomeWaitingPatient value)? getHomeWaitingPatient,
  }) {
    return getHomeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeStatus value)? getHomeStatus,
    TResult Function(_GetHomeWaitingPatient value)? getHomeWaitingPatient,
    required TResult orElse(),
  }) {
    if (getHomeStatus != null) {
      return getHomeStatus(this);
    }
    return orElse();
  }
}

abstract class _GetHomeStatus implements HomeEvent {
  const factory _GetHomeStatus() = _$_GetHomeStatus;
}

/// @nodoc
abstract class _$$_GetHomeWaitingPatientCopyWith<$Res> {
  factory _$$_GetHomeWaitingPatientCopyWith(_$_GetHomeWaitingPatient value,
          $Res Function(_$_GetHomeWaitingPatient) then) =
      __$$_GetHomeWaitingPatientCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeWaitingPatientCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetHomeWaitingPatient>
    implements _$$_GetHomeWaitingPatientCopyWith<$Res> {
  __$$_GetHomeWaitingPatientCopyWithImpl(_$_GetHomeWaitingPatient _value,
      $Res Function(_$_GetHomeWaitingPatient) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetHomeWaitingPatient implements _GetHomeWaitingPatient {
  const _$_GetHomeWaitingPatient();

  @override
  String toString() {
    return 'HomeEvent.getHomeWaitingPatient()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetHomeWaitingPatient);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeStatus,
    required TResult Function() getHomeWaitingPatient,
  }) {
    return getHomeWaitingPatient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeStatus,
    TResult? Function()? getHomeWaitingPatient,
  }) {
    return getHomeWaitingPatient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeStatus,
    TResult Function()? getHomeWaitingPatient,
    required TResult orElse(),
  }) {
    if (getHomeWaitingPatient != null) {
      return getHomeWaitingPatient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeStatus value) getHomeStatus,
    required TResult Function(_GetHomeWaitingPatient value)
        getHomeWaitingPatient,
  }) {
    return getHomeWaitingPatient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeStatus value)? getHomeStatus,
    TResult? Function(_GetHomeWaitingPatient value)? getHomeWaitingPatient,
  }) {
    return getHomeWaitingPatient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeStatus value)? getHomeStatus,
    TResult Function(_GetHomeWaitingPatient value)? getHomeWaitingPatient,
    required TResult orElse(),
  }) {
    if (getHomeWaitingPatient != null) {
      return getHomeWaitingPatient(this);
    }
    return orElse();
  }
}

abstract class _GetHomeWaitingPatient implements HomeEvent {
  const factory _GetHomeWaitingPatient() = _$_GetHomeWaitingPatient;
}

/// @nodoc
mixin _$HomeState {
  bool get isStatusLoading => throw _privateConstructorUsedError;
  bool get hasStatusData => throw _privateConstructorUsedError;
  bool get hasWaitingPatientData => throw _privateConstructorUsedError;
  bool get isWaitingPatientLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  HomeStatusModel? get statusResult => throw _privateConstructorUsedError;
  HomeWaitingPatientModel? get waitingPatientResult =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, HomeWaitingPatientModel>>
      get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isStatusLoading,
      bool hasStatusData,
      bool hasWaitingPatientData,
      bool isWaitingPatientLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      HomeStatusModel? statusResult,
      HomeWaitingPatientModel? waitingPatientResult,
      Option<Either<MainFailure, HomeWaitingPatientModel>>
          failureOrSuccessOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStatusLoading = null,
    Object? hasStatusData = null,
    Object? hasWaitingPatientData = null,
    Object? isWaitingPatientLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? statusResult = freezed,
    Object? waitingPatientResult = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isStatusLoading: null == isStatusLoading
          ? _value.isStatusLoading
          : isStatusLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStatusData: null == hasStatusData
          ? _value.hasStatusData
          : hasStatusData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWaitingPatientData: null == hasWaitingPatientData
          ? _value.hasWaitingPatientData
          : hasWaitingPatientData // ignore: cast_nullable_to_non_nullable
              as bool,
      isWaitingPatientLoading: null == isWaitingPatientLoading
          ? _value.isWaitingPatientLoading
          : isWaitingPatientLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      statusResult: freezed == statusResult
          ? _value.statusResult
          : statusResult // ignore: cast_nullable_to_non_nullable
              as HomeStatusModel?,
      waitingPatientResult: freezed == waitingPatientResult
          ? _value.waitingPatientResult
          : waitingPatientResult // ignore: cast_nullable_to_non_nullable
              as HomeWaitingPatientModel?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, HomeWaitingPatientModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isStatusLoading,
      bool hasStatusData,
      bool hasWaitingPatientData,
      bool isWaitingPatientLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      HomeStatusModel? statusResult,
      HomeWaitingPatientModel? waitingPatientResult,
      Option<Either<MainFailure, HomeWaitingPatientModel>>
          failureOrSuccessOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStatusLoading = null,
    Object? hasStatusData = null,
    Object? hasWaitingPatientData = null,
    Object? isWaitingPatientLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? statusResult = freezed,
    Object? waitingPatientResult = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_HomeState(
      isStatusLoading: null == isStatusLoading
          ? _value.isStatusLoading
          : isStatusLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStatusData: null == hasStatusData
          ? _value.hasStatusData
          : hasStatusData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWaitingPatientData: null == hasWaitingPatientData
          ? _value.hasWaitingPatientData
          : hasWaitingPatientData // ignore: cast_nullable_to_non_nullable
              as bool,
      isWaitingPatientLoading: null == isWaitingPatientLoading
          ? _value.isWaitingPatientLoading
          : isWaitingPatientLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      statusResult: freezed == statusResult
          ? _value.statusResult
          : statusResult // ignore: cast_nullable_to_non_nullable
              as HomeStatusModel?,
      waitingPatientResult: freezed == waitingPatientResult
          ? _value.waitingPatientResult
          : waitingPatientResult // ignore: cast_nullable_to_non_nullable
              as HomeWaitingPatientModel?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, HomeWaitingPatientModel>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isStatusLoading,
      required this.hasStatusData,
      required this.hasWaitingPatientData,
      required this.isWaitingPatientLoading,
      required this.unauthorized,
      required this.hasData,
      required this.isError,
      this.statusResult,
      this.waitingPatientResult,
      required this.failureOrSuccessOption});

  @override
  final bool isStatusLoading;
  @override
  final bool hasStatusData;
  @override
  final bool hasWaitingPatientData;
  @override
  final bool isWaitingPatientLoading;
  @override
  final bool unauthorized;
  @override
  final bool hasData;
  @override
  final bool isError;
  @override
  final HomeStatusModel? statusResult;
  @override
  final HomeWaitingPatientModel? waitingPatientResult;
  @override
  final Option<Either<MainFailure, HomeWaitingPatientModel>>
      failureOrSuccessOption;

  @override
  String toString() {
    return 'HomeState(isStatusLoading: $isStatusLoading, hasStatusData: $hasStatusData, hasWaitingPatientData: $hasWaitingPatientData, isWaitingPatientLoading: $isWaitingPatientLoading, unauthorized: $unauthorized, hasData: $hasData, isError: $isError, statusResult: $statusResult, waitingPatientResult: $waitingPatientResult, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isStatusLoading, isStatusLoading) ||
                other.isStatusLoading == isStatusLoading) &&
            (identical(other.hasStatusData, hasStatusData) ||
                other.hasStatusData == hasStatusData) &&
            (identical(other.hasWaitingPatientData, hasWaitingPatientData) ||
                other.hasWaitingPatientData == hasWaitingPatientData) &&
            (identical(
                    other.isWaitingPatientLoading, isWaitingPatientLoading) ||
                other.isWaitingPatientLoading == isWaitingPatientLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.statusResult, statusResult) ||
                other.statusResult == statusResult) &&
            (identical(other.waitingPatientResult, waitingPatientResult) ||
                other.waitingPatientResult == waitingPatientResult) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isStatusLoading,
      hasStatusData,
      hasWaitingPatientData,
      isWaitingPatientLoading,
      unauthorized,
      hasData,
      isError,
      statusResult,
      waitingPatientResult,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isStatusLoading,
      required final bool hasStatusData,
      required final bool hasWaitingPatientData,
      required final bool isWaitingPatientLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final bool isError,
      final HomeStatusModel? statusResult,
      final HomeWaitingPatientModel? waitingPatientResult,
      required final Option<Either<MainFailure, HomeWaitingPatientModel>>
          failureOrSuccessOption}) = _$_HomeState;

  @override
  bool get isStatusLoading;
  @override
  bool get hasStatusData;
  @override
  bool get hasWaitingPatientData;
  @override
  bool get isWaitingPatientLoading;
  @override
  bool get unauthorized;
  @override
  bool get hasData;
  @override
  bool get isError;
  @override
  HomeStatusModel? get statusResult;
  @override
  HomeWaitingPatientModel? get waitingPatientResult;
  @override
  Option<Either<MainFailure, HomeWaitingPatientModel>>
      get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
