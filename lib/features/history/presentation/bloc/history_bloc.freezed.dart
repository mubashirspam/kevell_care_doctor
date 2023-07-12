// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  String get fromDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        gePatientHistoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? gePatientHistoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? gePatientHistoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GePatientHistoryList value) gePatientHistoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GePatientHistoryList value)? gePatientHistoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GePatientHistoryList value)? gePatientHistoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryEventCopyWith<HistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_value.copyWith(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GePatientHistoryListCopyWith<$Res>
    implements $HistoryEventCopyWith<$Res> {
  factory _$$_GePatientHistoryListCopyWith(_$_GePatientHistoryList value,
          $Res Function(_$_GePatientHistoryList) then) =
      __$$_GePatientHistoryListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class __$$_GePatientHistoryListCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_GePatientHistoryList>
    implements _$$_GePatientHistoryListCopyWith<$Res> {
  __$$_GePatientHistoryListCopyWithImpl(_$_GePatientHistoryList _value,
      $Res Function(_$_GePatientHistoryList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$_GePatientHistoryList(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GePatientHistoryList implements _GePatientHistoryList {
  const _$_GePatientHistoryList({required this.fromDate, required this.toDate});

  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'HistoryEvent.gePatientHistoryList(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GePatientHistoryList &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GePatientHistoryListCopyWith<_$_GePatientHistoryList> get copyWith =>
      __$$_GePatientHistoryListCopyWithImpl<_$_GePatientHistoryList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        gePatientHistoryList,
  }) {
    return gePatientHistoryList(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? gePatientHistoryList,
  }) {
    return gePatientHistoryList?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? gePatientHistoryList,
    required TResult orElse(),
  }) {
    if (gePatientHistoryList != null) {
      return gePatientHistoryList(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GePatientHistoryList value) gePatientHistoryList,
  }) {
    return gePatientHistoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GePatientHistoryList value)? gePatientHistoryList,
  }) {
    return gePatientHistoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GePatientHistoryList value)? gePatientHistoryList,
    required TResult orElse(),
  }) {
    if (gePatientHistoryList != null) {
      return gePatientHistoryList(this);
    }
    return orElse();
  }
}

abstract class _GePatientHistoryList implements HistoryEvent {
  const factory _GePatientHistoryList(
      {required final String fromDate,
      required final String toDate}) = _$_GePatientHistoryList;

  @override
  String get fromDate;
  @override
  String get toDate;
  @override
  @JsonKey(ignore: true)
  _$$_GePatientHistoryListCopyWith<_$_GePatientHistoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  bool get isPatientListLoading => throw _privateConstructorUsedError;
  bool get hasPatientListData => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  HistoryPatientListModel? get patientListResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {bool isPatientListLoading,
      bool hasPatientListData,
      bool unauthorized,
      bool isError,
      HistoryPatientListModel? patientListResult});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPatientListLoading = null,
    Object? hasPatientListData = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? patientListResult = freezed,
  }) {
    return _then(_value.copyWith(
      isPatientListLoading: null == isPatientListLoading
          ? _value.isPatientListLoading
          : isPatientListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPatientListData: null == hasPatientListData
          ? _value.hasPatientListData
          : hasPatientListData // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      patientListResult: freezed == patientListResult
          ? _value.patientListResult
          : patientListResult // ignore: cast_nullable_to_non_nullable
              as HistoryPatientListModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$_HistoryStateCopyWith(
          _$_HistoryState value, $Res Function(_$_HistoryState) then) =
      __$$_HistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPatientListLoading,
      bool hasPatientListData,
      bool unauthorized,
      bool isError,
      HistoryPatientListModel? patientListResult});
}

/// @nodoc
class __$$_HistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryState>
    implements _$$_HistoryStateCopyWith<$Res> {
  __$$_HistoryStateCopyWithImpl(
      _$_HistoryState _value, $Res Function(_$_HistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPatientListLoading = null,
    Object? hasPatientListData = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? patientListResult = freezed,
  }) {
    return _then(_$_HistoryState(
      isPatientListLoading: null == isPatientListLoading
          ? _value.isPatientListLoading
          : isPatientListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPatientListData: null == hasPatientListData
          ? _value.hasPatientListData
          : hasPatientListData // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      patientListResult: freezed == patientListResult
          ? _value.patientListResult
          : patientListResult // ignore: cast_nullable_to_non_nullable
              as HistoryPatientListModel?,
    ));
  }
}

/// @nodoc

class _$_HistoryState implements _HistoryState {
  const _$_HistoryState(
      {required this.isPatientListLoading,
      required this.hasPatientListData,
      required this.unauthorized,
      required this.isError,
      this.patientListResult});

  @override
  final bool isPatientListLoading;
  @override
  final bool hasPatientListData;
  @override
  final bool unauthorized;
  @override
  final bool isError;
  @override
  final HistoryPatientListModel? patientListResult;

  @override
  String toString() {
    return 'HistoryState(isPatientListLoading: $isPatientListLoading, hasPatientListData: $hasPatientListData, unauthorized: $unauthorized, isError: $isError, patientListResult: $patientListResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryState &&
            (identical(other.isPatientListLoading, isPatientListLoading) ||
                other.isPatientListLoading == isPatientListLoading) &&
            (identical(other.hasPatientListData, hasPatientListData) ||
                other.hasPatientListData == hasPatientListData) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.patientListResult, patientListResult) ||
                other.patientListResult == patientListResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPatientListLoading,
      hasPatientListData, unauthorized, isError, patientListResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      __$$_HistoryStateCopyWithImpl<_$_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {required final bool isPatientListLoading,
      required final bool hasPatientListData,
      required final bool unauthorized,
      required final bool isError,
      final HistoryPatientListModel? patientListResult}) = _$_HistoryState;

  @override
  bool get isPatientListLoading;
  @override
  bool get hasPatientListData;
  @override
  bool get unauthorized;
  @override
  bool get isError;
  @override
  HistoryPatientListModel? get patientListResult;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
