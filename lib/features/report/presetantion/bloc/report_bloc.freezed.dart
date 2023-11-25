// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_PickDate value) pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_PickDate value)? pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res, ReportEvent>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res, $Val extends ReportEvent>
    implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchReportGeneralinfoImplCopyWith<$Res> {
  factory _$$FetchReportGeneralinfoImplCopyWith(
          _$FetchReportGeneralinfoImpl value,
          $Res Function(_$FetchReportGeneralinfoImpl) then) =
      __$$FetchReportGeneralinfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchReportGeneralinfoImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$FetchReportGeneralinfoImpl>
    implements _$$FetchReportGeneralinfoImplCopyWith<$Res> {
  __$$FetchReportGeneralinfoImplCopyWithImpl(
      _$FetchReportGeneralinfoImpl _value,
      $Res Function(_$FetchReportGeneralinfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchReportGeneralinfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchReportGeneralinfoImpl implements _FetchReportGeneralinfo {
  const _$FetchReportGeneralinfoImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ReportEvent.fetchReportGeneralinfo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReportGeneralinfoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReportGeneralinfoImplCopyWith<_$FetchReportGeneralinfoImpl>
      get copyWith => __$$FetchReportGeneralinfoImplCopyWithImpl<
          _$FetchReportGeneralinfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return fetchReportGeneralinfo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return fetchReportGeneralinfo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReportGeneralinfo != null) {
      return fetchReportGeneralinfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return fetchReportGeneralinfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return fetchReportGeneralinfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReportGeneralinfo != null) {
      return fetchReportGeneralinfo(this);
    }
    return orElse();
  }
}

abstract class _FetchReportGeneralinfo implements ReportEvent {
  const factory _FetchReportGeneralinfo({required final int id}) =
      _$FetchReportGeneralinfoImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FetchReportGeneralinfoImplCopyWith<_$FetchReportGeneralinfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchReportImplCopyWith<$Res> {
  factory _$$FetchReportImplCopyWith(
          _$FetchReportImpl value, $Res Function(_$FetchReportImpl) then) =
      __$$FetchReportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchReportPayload fetchReportPayload});
}

/// @nodoc
class __$$FetchReportImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$FetchReportImpl>
    implements _$$FetchReportImplCopyWith<$Res> {
  __$$FetchReportImplCopyWithImpl(
      _$FetchReportImpl _value, $Res Function(_$FetchReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchReportPayload = null,
  }) {
    return _then(_$FetchReportImpl(
      fetchReportPayload: null == fetchReportPayload
          ? _value.fetchReportPayload
          : fetchReportPayload // ignore: cast_nullable_to_non_nullable
              as FetchReportPayload,
    ));
  }
}

/// @nodoc

class _$FetchReportImpl implements _FetchReport {
  const _$FetchReportImpl({required this.fetchReportPayload});

  @override
  final FetchReportPayload fetchReportPayload;

  @override
  String toString() {
    return 'ReportEvent.fetchReport(fetchReportPayload: $fetchReportPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReportImpl &&
            (identical(other.fetchReportPayload, fetchReportPayload) ||
                other.fetchReportPayload == fetchReportPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchReportPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReportImplCopyWith<_$FetchReportImpl> get copyWith =>
      __$$FetchReportImplCopyWithImpl<_$FetchReportImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return fetchReport(fetchReportPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return fetchReport?.call(fetchReportPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReport != null) {
      return fetchReport(fetchReportPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return fetchReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return fetchReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReport != null) {
      return fetchReport(this);
    }
    return orElse();
  }
}

abstract class _FetchReport implements ReportEvent {
  const factory _FetchReport(
          {required final FetchReportPayload fetchReportPayload}) =
      _$FetchReportImpl;

  FetchReportPayload get fetchReportPayload;
  @JsonKey(ignore: true)
  _$$FetchReportImplCopyWith<_$FetchReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickDateImplCopyWith<$Res> {
  factory _$$PickDateImplCopyWith(
          _$PickDateImpl value, $Res Function(_$PickDateImpl) then) =
      __$$PickDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$PickDateImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$PickDateImpl>
    implements _$$PickDateImplCopyWith<$Res> {
  __$$PickDateImplCopyWithImpl(
      _$PickDateImpl _value, $Res Function(_$PickDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$PickDateImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PickDateImpl implements _PickDate {
  const _$PickDateImpl({required this.startDate, required this.endDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'ReportEvent.pickDate(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickDateImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickDateImplCopyWith<_$PickDateImpl> get copyWith =>
      __$$PickDateImplCopyWithImpl<_$PickDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return pickDate(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return pickDate?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return pickDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return pickDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(this);
    }
    return orElse();
  }
}

abstract class _PickDate implements ReportEvent {
  const factory _PickDate(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$PickDateImpl;

  DateTime get startDate;
  DateTime get endDate;
  @JsonKey(ignore: true)
  _$$PickDateImplCopyWith<_$PickDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportState {
  bool get isGenaralInfoLoading => throw _privateConstructorUsedError;
  bool get isReportDataLoading => throw _privateConstructorUsedError;
  bool get hasGenaralInfoData => throw _privateConstructorUsedError;
  bool get hasReportData => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  ReportGeneraInfoModel? get reportGeneraInfo =>
      throw _privateConstructorUsedError;
  ReportModel? get reportData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
  @useResult
  $Res call(
      {bool isGenaralInfoLoading,
      bool isReportDataLoading,
      bool hasGenaralInfoData,
      bool hasReportData,
      bool unauthorized,
      DateTime startDate,
      DateTime endDate,
      bool isError,
      ReportGeneraInfoModel? reportGeneraInfo,
      ReportModel? reportData});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGenaralInfoLoading = null,
    Object? isReportDataLoading = null,
    Object? hasGenaralInfoData = null,
    Object? hasReportData = null,
    Object? unauthorized = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isError = null,
    Object? reportGeneraInfo = freezed,
    Object? reportData = freezed,
  }) {
    return _then(_value.copyWith(
      isGenaralInfoLoading: null == isGenaralInfoLoading
          ? _value.isGenaralInfoLoading
          : isGenaralInfoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReportDataLoading: null == isReportDataLoading
          ? _value.isReportDataLoading
          : isReportDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGenaralInfoData: null == hasGenaralInfoData
          ? _value.hasGenaralInfoData
          : hasGenaralInfoData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReportData: null == hasReportData
          ? _value.hasReportData
          : hasReportData // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      reportGeneraInfo: freezed == reportGeneraInfo
          ? _value.reportGeneraInfo
          : reportGeneraInfo // ignore: cast_nullable_to_non_nullable
              as ReportGeneraInfoModel?,
      reportData: freezed == reportData
          ? _value.reportData
          : reportData // ignore: cast_nullable_to_non_nullable
              as ReportModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportStateImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$ReportStateImplCopyWith(
          _$ReportStateImpl value, $Res Function(_$ReportStateImpl) then) =
      __$$ReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isGenaralInfoLoading,
      bool isReportDataLoading,
      bool hasGenaralInfoData,
      bool hasReportData,
      bool unauthorized,
      DateTime startDate,
      DateTime endDate,
      bool isError,
      ReportGeneraInfoModel? reportGeneraInfo,
      ReportModel? reportData});
}

/// @nodoc
class __$$ReportStateImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportStateImpl>
    implements _$$ReportStateImplCopyWith<$Res> {
  __$$ReportStateImplCopyWithImpl(
      _$ReportStateImpl _value, $Res Function(_$ReportStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGenaralInfoLoading = null,
    Object? isReportDataLoading = null,
    Object? hasGenaralInfoData = null,
    Object? hasReportData = null,
    Object? unauthorized = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isError = null,
    Object? reportGeneraInfo = freezed,
    Object? reportData = freezed,
  }) {
    return _then(_$ReportStateImpl(
      isGenaralInfoLoading: null == isGenaralInfoLoading
          ? _value.isGenaralInfoLoading
          : isGenaralInfoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReportDataLoading: null == isReportDataLoading
          ? _value.isReportDataLoading
          : isReportDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGenaralInfoData: null == hasGenaralInfoData
          ? _value.hasGenaralInfoData
          : hasGenaralInfoData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReportData: null == hasReportData
          ? _value.hasReportData
          : hasReportData // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      reportGeneraInfo: freezed == reportGeneraInfo
          ? _value.reportGeneraInfo
          : reportGeneraInfo // ignore: cast_nullable_to_non_nullable
              as ReportGeneraInfoModel?,
      reportData: freezed == reportData
          ? _value.reportData
          : reportData // ignore: cast_nullable_to_non_nullable
              as ReportModel?,
    ));
  }
}

/// @nodoc

class _$ReportStateImpl implements _ReportState {
  const _$ReportStateImpl(
      {required this.isGenaralInfoLoading,
      required this.isReportDataLoading,
      required this.hasGenaralInfoData,
      required this.hasReportData,
      required this.unauthorized,
      required this.startDate,
      required this.endDate,
      required this.isError,
      this.reportGeneraInfo,
      this.reportData});

  @override
  final bool isGenaralInfoLoading;
  @override
  final bool isReportDataLoading;
  @override
  final bool hasGenaralInfoData;
  @override
  final bool hasReportData;
  @override
  final bool unauthorized;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final bool isError;
  @override
  final ReportGeneraInfoModel? reportGeneraInfo;
  @override
  final ReportModel? reportData;

  @override
  String toString() {
    return 'ReportState(isGenaralInfoLoading: $isGenaralInfoLoading, isReportDataLoading: $isReportDataLoading, hasGenaralInfoData: $hasGenaralInfoData, hasReportData: $hasReportData, unauthorized: $unauthorized, startDate: $startDate, endDate: $endDate, isError: $isError, reportGeneraInfo: $reportGeneraInfo, reportData: $reportData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStateImpl &&
            (identical(other.isGenaralInfoLoading, isGenaralInfoLoading) ||
                other.isGenaralInfoLoading == isGenaralInfoLoading) &&
            (identical(other.isReportDataLoading, isReportDataLoading) ||
                other.isReportDataLoading == isReportDataLoading) &&
            (identical(other.hasGenaralInfoData, hasGenaralInfoData) ||
                other.hasGenaralInfoData == hasGenaralInfoData) &&
            (identical(other.hasReportData, hasReportData) ||
                other.hasReportData == hasReportData) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.reportGeneraInfo, reportGeneraInfo) ||
                other.reportGeneraInfo == reportGeneraInfo) &&
            (identical(other.reportData, reportData) ||
                other.reportData == reportData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isGenaralInfoLoading,
      isReportDataLoading,
      hasGenaralInfoData,
      hasReportData,
      unauthorized,
      startDate,
      endDate,
      isError,
      reportGeneraInfo,
      reportData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      __$$ReportStateImplCopyWithImpl<_$ReportStateImpl>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState(
      {required final bool isGenaralInfoLoading,
      required final bool isReportDataLoading,
      required final bool hasGenaralInfoData,
      required final bool hasReportData,
      required final bool unauthorized,
      required final DateTime startDate,
      required final DateTime endDate,
      required final bool isError,
      final ReportGeneraInfoModel? reportGeneraInfo,
      final ReportModel? reportData}) = _$ReportStateImpl;

  @override
  bool get isGenaralInfoLoading;
  @override
  bool get isReportDataLoading;
  @override
  bool get hasGenaralInfoData;
  @override
  bool get hasReportData;
  @override
  bool get unauthorized;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  bool get isError;
  @override
  ReportGeneraInfoModel? get reportGeneraInfo;
  @override
  ReportModel? get reportData;
  @override
  @JsonKey(ignore: true)
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
