// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrecriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionModel prescriptionModel)
        createPrescription,
    required TResult Function(PrescriptionModel prescriptionModel)
        updatePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult? Function(PrescriptionModel prescriptionModel)? updatePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult Function(PrescriptionModel prescriptionModel)? updatePrescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrescriptionList value) getPrescriptionList,
    required TResult Function(_GetPrescriptionSettings value)
        getPrescriptionSettings,
    required TResult Function(_CreatePrescription value) createPrescription,
    required TResult Function(_UpdatePrescription value) updatePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecriptionEventCopyWith<$Res> {
  factory $PrecriptionEventCopyWith(
          PrecriptionEvent value, $Res Function(PrecriptionEvent) then) =
      _$PrecriptionEventCopyWithImpl<$Res, PrecriptionEvent>;
}

/// @nodoc
class _$PrecriptionEventCopyWithImpl<$Res, $Val extends PrecriptionEvent>
    implements $PrecriptionEventCopyWith<$Res> {
  _$PrecriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetPrescriptionListCopyWith<$Res> {
  factory _$$_GetPrescriptionListCopyWith(_$_GetPrescriptionList value,
          $Res Function(_$_GetPrescriptionList) then) =
      __$$_GetPrescriptionListCopyWithImpl<$Res>;
  @useResult
  $Res call({int appointmentId});
}

/// @nodoc
class __$$_GetPrescriptionListCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_GetPrescriptionList>
    implements _$$_GetPrescriptionListCopyWith<$Res> {
  __$$_GetPrescriptionListCopyWithImpl(_$_GetPrescriptionList _value,
      $Res Function(_$_GetPrescriptionList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
  }) {
    return _then(_$_GetPrescriptionList(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPrescriptionList implements _GetPrescriptionList {
  const _$_GetPrescriptionList({required this.appointmentId});

  @override
  final int appointmentId;

  @override
  String toString() {
    return 'PrecriptionEvent.getPrescriptionList(appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPrescriptionList &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPrescriptionListCopyWith<_$_GetPrescriptionList> get copyWith =>
      __$$_GetPrescriptionListCopyWithImpl<_$_GetPrescriptionList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionModel prescriptionModel)
        createPrescription,
    required TResult Function(PrescriptionModel prescriptionModel)
        updatePrescription,
  }) {
    return getPrescriptionList(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult? Function(PrescriptionModel prescriptionModel)? updatePrescription,
  }) {
    return getPrescriptionList?.call(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult Function(PrescriptionModel prescriptionModel)? updatePrescription,
    required TResult orElse(),
  }) {
    if (getPrescriptionList != null) {
      return getPrescriptionList(appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrescriptionList value) getPrescriptionList,
    required TResult Function(_GetPrescriptionSettings value)
        getPrescriptionSettings,
    required TResult Function(_CreatePrescription value) createPrescription,
    required TResult Function(_UpdatePrescription value) updatePrescription,
  }) {
    return getPrescriptionList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
  }) {
    return getPrescriptionList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    required TResult orElse(),
  }) {
    if (getPrescriptionList != null) {
      return getPrescriptionList(this);
    }
    return orElse();
  }
}

abstract class _GetPrescriptionList implements PrecriptionEvent {
  const factory _GetPrescriptionList({required final int appointmentId}) =
      _$_GetPrescriptionList;

  int get appointmentId;
  @JsonKey(ignore: true)
  _$$_GetPrescriptionListCopyWith<_$_GetPrescriptionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPrescriptionSettingsCopyWith<$Res> {
  factory _$$_GetPrescriptionSettingsCopyWith(_$_GetPrescriptionSettings value,
          $Res Function(_$_GetPrescriptionSettings) then) =
      __$$_GetPrescriptionSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPrescriptionSettingsCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_GetPrescriptionSettings>
    implements _$$_GetPrescriptionSettingsCopyWith<$Res> {
  __$$_GetPrescriptionSettingsCopyWithImpl(_$_GetPrescriptionSettings _value,
      $Res Function(_$_GetPrescriptionSettings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPrescriptionSettings implements _GetPrescriptionSettings {
  const _$_GetPrescriptionSettings();

  @override
  String toString() {
    return 'PrecriptionEvent.getPrescriptionSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPrescriptionSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionModel prescriptionModel)
        createPrescription,
    required TResult Function(PrescriptionModel prescriptionModel)
        updatePrescription,
  }) {
    return getPrescriptionSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult? Function(PrescriptionModel prescriptionModel)? updatePrescription,
  }) {
    return getPrescriptionSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult Function(PrescriptionModel prescriptionModel)? updatePrescription,
    required TResult orElse(),
  }) {
    if (getPrescriptionSettings != null) {
      return getPrescriptionSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrescriptionList value) getPrescriptionList,
    required TResult Function(_GetPrescriptionSettings value)
        getPrescriptionSettings,
    required TResult Function(_CreatePrescription value) createPrescription,
    required TResult Function(_UpdatePrescription value) updatePrescription,
  }) {
    return getPrescriptionSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
  }) {
    return getPrescriptionSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    required TResult orElse(),
  }) {
    if (getPrescriptionSettings != null) {
      return getPrescriptionSettings(this);
    }
    return orElse();
  }
}

abstract class _GetPrescriptionSettings implements PrecriptionEvent {
  const factory _GetPrescriptionSettings() = _$_GetPrescriptionSettings;
}

/// @nodoc
abstract class _$$_CreatePrescriptionCopyWith<$Res> {
  factory _$$_CreatePrescriptionCopyWith(_$_CreatePrescription value,
          $Res Function(_$_CreatePrescription) then) =
      __$$_CreatePrescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({PrescriptionModel prescriptionModel});
}

/// @nodoc
class __$$_CreatePrescriptionCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_CreatePrescription>
    implements _$$_CreatePrescriptionCopyWith<$Res> {
  __$$_CreatePrescriptionCopyWithImpl(
      _$_CreatePrescription _value, $Res Function(_$_CreatePrescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptionModel = null,
  }) {
    return _then(_$_CreatePrescription(
      prescriptionModel: null == prescriptionModel
          ? _value.prescriptionModel
          : prescriptionModel // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel,
    ));
  }
}

/// @nodoc

class _$_CreatePrescription implements _CreatePrescription {
  const _$_CreatePrescription({required this.prescriptionModel});

  @override
  final PrescriptionModel prescriptionModel;

  @override
  String toString() {
    return 'PrecriptionEvent.createPrescription(prescriptionModel: $prescriptionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePrescription &&
            (identical(other.prescriptionModel, prescriptionModel) ||
                other.prescriptionModel == prescriptionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePrescriptionCopyWith<_$_CreatePrescription> get copyWith =>
      __$$_CreatePrescriptionCopyWithImpl<_$_CreatePrescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionModel prescriptionModel)
        createPrescription,
    required TResult Function(PrescriptionModel prescriptionModel)
        updatePrescription,
  }) {
    return createPrescription(prescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult? Function(PrescriptionModel prescriptionModel)? updatePrescription,
  }) {
    return createPrescription?.call(prescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult Function(PrescriptionModel prescriptionModel)? updatePrescription,
    required TResult orElse(),
  }) {
    if (createPrescription != null) {
      return createPrescription(prescriptionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrescriptionList value) getPrescriptionList,
    required TResult Function(_GetPrescriptionSettings value)
        getPrescriptionSettings,
    required TResult Function(_CreatePrescription value) createPrescription,
    required TResult Function(_UpdatePrescription value) updatePrescription,
  }) {
    return createPrescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
  }) {
    return createPrescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    required TResult orElse(),
  }) {
    if (createPrescription != null) {
      return createPrescription(this);
    }
    return orElse();
  }
}

abstract class _CreatePrescription implements PrecriptionEvent {
  const factory _CreatePrescription(
          {required final PrescriptionModel prescriptionModel}) =
      _$_CreatePrescription;

  PrescriptionModel get prescriptionModel;
  @JsonKey(ignore: true)
  _$$_CreatePrescriptionCopyWith<_$_CreatePrescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePrescriptionCopyWith<$Res> {
  factory _$$_UpdatePrescriptionCopyWith(_$_UpdatePrescription value,
          $Res Function(_$_UpdatePrescription) then) =
      __$$_UpdatePrescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({PrescriptionModel prescriptionModel});
}

/// @nodoc
class __$$_UpdatePrescriptionCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_UpdatePrescription>
    implements _$$_UpdatePrescriptionCopyWith<$Res> {
  __$$_UpdatePrescriptionCopyWithImpl(
      _$_UpdatePrescription _value, $Res Function(_$_UpdatePrescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptionModel = null,
  }) {
    return _then(_$_UpdatePrescription(
      prescriptionModel: null == prescriptionModel
          ? _value.prescriptionModel
          : prescriptionModel // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel,
    ));
  }
}

/// @nodoc

class _$_UpdatePrescription implements _UpdatePrescription {
  const _$_UpdatePrescription({required this.prescriptionModel});

  @override
  final PrescriptionModel prescriptionModel;

  @override
  String toString() {
    return 'PrecriptionEvent.updatePrescription(prescriptionModel: $prescriptionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePrescription &&
            (identical(other.prescriptionModel, prescriptionModel) ||
                other.prescriptionModel == prescriptionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePrescriptionCopyWith<_$_UpdatePrescription> get copyWith =>
      __$$_UpdatePrescriptionCopyWithImpl<_$_UpdatePrescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionModel prescriptionModel)
        createPrescription,
    required TResult Function(PrescriptionModel prescriptionModel)
        updatePrescription,
  }) {
    return updatePrescription(prescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult? Function(PrescriptionModel prescriptionModel)? updatePrescription,
  }) {
    return updatePrescription?.call(prescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionModel prescriptionModel)? createPrescription,
    TResult Function(PrescriptionModel prescriptionModel)? updatePrescription,
    required TResult orElse(),
  }) {
    if (updatePrescription != null) {
      return updatePrescription(prescriptionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrescriptionList value) getPrescriptionList,
    required TResult Function(_GetPrescriptionSettings value)
        getPrescriptionSettings,
    required TResult Function(_CreatePrescription value) createPrescription,
    required TResult Function(_UpdatePrescription value) updatePrescription,
  }) {
    return updatePrescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
  }) {
    return updatePrescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    required TResult orElse(),
  }) {
    if (updatePrescription != null) {
      return updatePrescription(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrescription implements PrecriptionEvent {
  const factory _UpdatePrescription(
          {required final PrescriptionModel prescriptionModel}) =
      _$_UpdatePrescription;

  PrescriptionModel get prescriptionModel;
  @JsonKey(ignore: true)
  _$$_UpdatePrescriptionCopyWith<_$_UpdatePrescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrecriptionState {
  bool get isGetLoading => throw _privateConstructorUsedError;
  bool get isGetSettingsLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get isCreateLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get hasSettingsData => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PrescriptionModel? get prescriptionResult =>
      throw _privateConstructorUsedError;
  PrescriptionSettingsModel? get prescriptionSettingsResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrecriptionStateCopyWith<PrecriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecriptionStateCopyWith<$Res> {
  factory $PrecriptionStateCopyWith(
          PrecriptionState value, $Res Function(PrecriptionState) then) =
      _$PrecriptionStateCopyWithImpl<$Res, PrecriptionState>;
  @useResult
  $Res call(
      {bool isGetLoading,
      bool isGetSettingsLoading,
      bool isUpdateLoading,
      bool isCreateLoading,
      bool unauthorized,
      bool isError,
      bool hasData,
      bool hasSettingsData,
      String? message,
      PrescriptionModel? prescriptionResult,
      PrescriptionSettingsModel? prescriptionSettingsResult});
}

/// @nodoc
class _$PrecriptionStateCopyWithImpl<$Res, $Val extends PrecriptionState>
    implements $PrecriptionStateCopyWith<$Res> {
  _$PrecriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGetLoading = null,
    Object? isGetSettingsLoading = null,
    Object? isUpdateLoading = null,
    Object? isCreateLoading = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? hasData = null,
    Object? hasSettingsData = null,
    Object? message = freezed,
    Object? prescriptionResult = freezed,
    Object? prescriptionSettingsResult = freezed,
  }) {
    return _then(_value.copyWith(
      isGetLoading: null == isGetLoading
          ? _value.isGetLoading
          : isGetLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetSettingsLoading: null == isGetSettingsLoading
          ? _value.isGetSettingsLoading
          : isGetSettingsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateLoading: null == isCreateLoading
          ? _value.isCreateLoading
          : isCreateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSettingsData: null == hasSettingsData
          ? _value.hasSettingsData
          : hasSettingsData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriptionResult: freezed == prescriptionResult
          ? _value.prescriptionResult
          : prescriptionResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel?,
      prescriptionSettingsResult: freezed == prescriptionSettingsResult
          ? _value.prescriptionSettingsResult
          : prescriptionSettingsResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionSettingsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrecriptionStateCopyWith<$Res>
    implements $PrecriptionStateCopyWith<$Res> {
  factory _$$_PrecriptionStateCopyWith(
          _$_PrecriptionState value, $Res Function(_$_PrecriptionState) then) =
      __$$_PrecriptionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isGetLoading,
      bool isGetSettingsLoading,
      bool isUpdateLoading,
      bool isCreateLoading,
      bool unauthorized,
      bool isError,
      bool hasData,
      bool hasSettingsData,
      String? message,
      PrescriptionModel? prescriptionResult,
      PrescriptionSettingsModel? prescriptionSettingsResult});
}

/// @nodoc
class __$$_PrecriptionStateCopyWithImpl<$Res>
    extends _$PrecriptionStateCopyWithImpl<$Res, _$_PrecriptionState>
    implements _$$_PrecriptionStateCopyWith<$Res> {
  __$$_PrecriptionStateCopyWithImpl(
      _$_PrecriptionState _value, $Res Function(_$_PrecriptionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGetLoading = null,
    Object? isGetSettingsLoading = null,
    Object? isUpdateLoading = null,
    Object? isCreateLoading = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? hasData = null,
    Object? hasSettingsData = null,
    Object? message = freezed,
    Object? prescriptionResult = freezed,
    Object? prescriptionSettingsResult = freezed,
  }) {
    return _then(_$_PrecriptionState(
      isGetLoading: null == isGetLoading
          ? _value.isGetLoading
          : isGetLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetSettingsLoading: null == isGetSettingsLoading
          ? _value.isGetSettingsLoading
          : isGetSettingsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateLoading: null == isCreateLoading
          ? _value.isCreateLoading
          : isCreateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSettingsData: null == hasSettingsData
          ? _value.hasSettingsData
          : hasSettingsData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriptionResult: freezed == prescriptionResult
          ? _value.prescriptionResult
          : prescriptionResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel?,
      prescriptionSettingsResult: freezed == prescriptionSettingsResult
          ? _value.prescriptionSettingsResult
          : prescriptionSettingsResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionSettingsModel?,
    ));
  }
}

/// @nodoc

class _$_PrecriptionState implements _PrecriptionState {
  const _$_PrecriptionState(
      {required this.isGetLoading,
      required this.isGetSettingsLoading,
      required this.isUpdateLoading,
      required this.isCreateLoading,
      required this.unauthorized,
      required this.isError,
      required this.hasData,
      required this.hasSettingsData,
      required this.message,
      this.prescriptionResult,
      this.prescriptionSettingsResult});

  @override
  final bool isGetLoading;
  @override
  final bool isGetSettingsLoading;
  @override
  final bool isUpdateLoading;
  @override
  final bool isCreateLoading;
  @override
  final bool unauthorized;
  @override
  final bool isError;
  @override
  final bool hasData;
  @override
  final bool hasSettingsData;
  @override
  final String? message;
  @override
  final PrescriptionModel? prescriptionResult;
  @override
  final PrescriptionSettingsModel? prescriptionSettingsResult;

  @override
  String toString() {
    return 'PrecriptionState(isGetLoading: $isGetLoading, isGetSettingsLoading: $isGetSettingsLoading, isUpdateLoading: $isUpdateLoading, isCreateLoading: $isCreateLoading, unauthorized: $unauthorized, isError: $isError, hasData: $hasData, hasSettingsData: $hasSettingsData, message: $message, prescriptionResult: $prescriptionResult, prescriptionSettingsResult: $prescriptionSettingsResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrecriptionState &&
            (identical(other.isGetLoading, isGetLoading) ||
                other.isGetLoading == isGetLoading) &&
            (identical(other.isGetSettingsLoading, isGetSettingsLoading) ||
                other.isGetSettingsLoading == isGetSettingsLoading) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.isCreateLoading, isCreateLoading) ||
                other.isCreateLoading == isCreateLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.hasSettingsData, hasSettingsData) ||
                other.hasSettingsData == hasSettingsData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.prescriptionResult, prescriptionResult) ||
                other.prescriptionResult == prescriptionResult) &&
            (identical(other.prescriptionSettingsResult,
                    prescriptionSettingsResult) ||
                other.prescriptionSettingsResult ==
                    prescriptionSettingsResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isGetLoading,
      isGetSettingsLoading,
      isUpdateLoading,
      isCreateLoading,
      unauthorized,
      isError,
      hasData,
      hasSettingsData,
      message,
      prescriptionResult,
      prescriptionSettingsResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrecriptionStateCopyWith<_$_PrecriptionState> get copyWith =>
      __$$_PrecriptionStateCopyWithImpl<_$_PrecriptionState>(this, _$identity);
}

abstract class _PrecriptionState implements PrecriptionState {
  const factory _PrecriptionState(
          {required final bool isGetLoading,
          required final bool isGetSettingsLoading,
          required final bool isUpdateLoading,
          required final bool isCreateLoading,
          required final bool unauthorized,
          required final bool isError,
          required final bool hasData,
          required final bool hasSettingsData,
          required final String? message,
          final PrescriptionModel? prescriptionResult,
          final PrescriptionSettingsModel? prescriptionSettingsResult}) =
      _$_PrecriptionState;

  @override
  bool get isGetLoading;
  @override
  bool get isGetSettingsLoading;
  @override
  bool get isUpdateLoading;
  @override
  bool get isCreateLoading;
  @override
  bool get unauthorized;
  @override
  bool get isError;
  @override
  bool get hasData;
  @override
  bool get hasSettingsData;
  @override
  String? get message;
  @override
  PrescriptionModel? get prescriptionResult;
  @override
  PrescriptionSettingsModel? get prescriptionSettingsResult;
  @override
  @JsonKey(ignore: true)
  _$$_PrecriptionStateCopyWith<_$_PrecriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
