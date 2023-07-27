// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)
        updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)?
        updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)?
        updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchedule value) getProfile,
    required TResult Function(_CreateSchedule value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchedule value)? getProfile,
    TResult? Function(_CreateSchedule value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchedule value)? getProfile,
    TResult Function(_CreateSchedule value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetScheduleCopyWith<$Res> {
  factory _$$_GetScheduleCopyWith(
          _$_GetSchedule value, $Res Function(_$_GetSchedule) then) =
      __$$_GetScheduleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetScheduleCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$_GetSchedule>
    implements _$$_GetScheduleCopyWith<$Res> {
  __$$_GetScheduleCopyWithImpl(
      _$_GetSchedule _value, $Res Function(_$_GetSchedule) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSchedule implements _GetSchedule {
  const _$_GetSchedule();

  @override
  String toString() {
    return 'ScheduleEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSchedule);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)
        updateProfile,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)?
        updateProfile,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)?
        updateProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchedule value) getProfile,
    required TResult Function(_CreateSchedule value) updateProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchedule value)? getProfile,
    TResult? Function(_CreateSchedule value)? updateProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchedule value)? getProfile,
    TResult Function(_CreateSchedule value)? updateProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetSchedule implements ScheduleEvent {
  const factory _GetSchedule() = _$_GetSchedule;
}

/// @nodoc
abstract class _$$_CreateScheduleCopyWith<$Res> {
  factory _$$_CreateScheduleCopyWith(
          _$_CreateSchedule value, $Res Function(_$_CreateSchedule) then) =
      __$$_CreateScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate,
      String toDate,
      String fromTime,
      String toTime,
      String numberOfPatient});
}

/// @nodoc
class __$$_CreateScheduleCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$_CreateSchedule>
    implements _$$_CreateScheduleCopyWith<$Res> {
  __$$_CreateScheduleCopyWithImpl(
      _$_CreateSchedule _value, $Res Function(_$_CreateSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? fromTime = null,
    Object? toTime = null,
    Object? numberOfPatient = null,
  }) {
    return _then(_$_CreateSchedule(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      fromTime: null == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String,
      toTime: null == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPatient: null == numberOfPatient
          ? _value.numberOfPatient
          : numberOfPatient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateSchedule implements _CreateSchedule {
  const _$_CreateSchedule(
      {required this.fromDate,
      required this.toDate,
      required this.fromTime,
      required this.toTime,
      required this.numberOfPatient});

  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String fromTime;
  @override
  final String toTime;
  @override
  final String numberOfPatient;

  @override
  String toString() {
    return 'ScheduleEvent.updateProfile(fromDate: $fromDate, toDate: $toDate, fromTime: $fromTime, toTime: $toTime, numberOfPatient: $numberOfPatient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSchedule &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.numberOfPatient, numberOfPatient) ||
                other.numberOfPatient == numberOfPatient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fromDate, toDate, fromTime, toTime, numberOfPatient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateScheduleCopyWith<_$_CreateSchedule> get copyWith =>
      __$$_CreateScheduleCopyWithImpl<_$_CreateSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)
        updateProfile,
  }) {
    return updateProfile(fromDate, toDate, fromTime, toTime, numberOfPatient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)?
        updateProfile,
  }) {
    return updateProfile?.call(
        fromDate, toDate, fromTime, toTime, numberOfPatient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(String fromDate, String toDate, String fromTime,
            String toTime, String numberOfPatient)?
        updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(fromDate, toDate, fromTime, toTime, numberOfPatient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchedule value) getProfile,
    required TResult Function(_CreateSchedule value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchedule value)? getProfile,
    TResult? Function(_CreateSchedule value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchedule value)? getProfile,
    TResult Function(_CreateSchedule value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _CreateSchedule implements ScheduleEvent {
  const factory _CreateSchedule(
      {required final String fromDate,
      required final String toDate,
      required final String fromTime,
      required final String toTime,
      required final String numberOfPatient}) = _$_CreateSchedule;

  String get fromDate;
  String get toDate;
  String get fromTime;
  String get toTime;
  String get numberOfPatient;
  @JsonKey(ignore: true)
  _$$_CreateScheduleCopyWith<_$_CreateSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isCreateLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  ScheduleModel? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isCreateLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      ScheduleModel? result});
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isCreateLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateLoading: null == isCreateLoading
          ? _value.isCreateLoading
          : isCreateLoading // ignore: cast_nullable_to_non_nullable
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ScheduleModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleStateCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$_ScheduleStateCopyWith(
          _$_ScheduleState value, $Res Function(_$_ScheduleState) then) =
      __$$_ScheduleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isCreateLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      ScheduleModel? result});
}

/// @nodoc
class __$$_ScheduleStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleState>
    implements _$$_ScheduleStateCopyWith<$Res> {
  __$$_ScheduleStateCopyWithImpl(
      _$_ScheduleState _value, $Res Function(_$_ScheduleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isCreateLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? result = freezed,
  }) {
    return _then(_$_ScheduleState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateLoading: null == isCreateLoading
          ? _value.isCreateLoading
          : isCreateLoading // ignore: cast_nullable_to_non_nullable
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ScheduleModel?,
    ));
  }
}

/// @nodoc

class _$_ScheduleState implements _ScheduleState {
  const _$_ScheduleState(
      {required this.isLoading,
      required this.isCreateLoading,
      required this.unauthorized,
      required this.hasData,
      required this.isError,
      required this.result});

  @override
  final bool isLoading;
  @override
  final bool isCreateLoading;
  @override
  final bool unauthorized;
  @override
  final bool hasData;
  @override
  final bool isError;
  @override
  final ScheduleModel? result;

  @override
  String toString() {
    return 'ScheduleState(isLoading: $isLoading, isCreateLoading: $isCreateLoading, unauthorized: $unauthorized, hasData: $hasData, isError: $isError, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isCreateLoading, isCreateLoading) ||
                other.isCreateLoading == isCreateLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isCreateLoading,
      unauthorized, hasData, isError, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      __$$_ScheduleStateCopyWithImpl<_$_ScheduleState>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState(
      {required final bool isLoading,
      required final bool isCreateLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final bool isError,
      required final ScheduleModel? result}) = _$_ScheduleState;

  @override
  bool get isLoading;
  @override
  bool get isCreateLoading;
  @override
  bool get unauthorized;
  @override
  bool get hasData;
  @override
  bool get isError;
  @override
  ScheduleModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}
