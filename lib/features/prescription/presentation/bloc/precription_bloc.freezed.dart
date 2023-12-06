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
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
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
abstract class _$$GetPrescriptionListImplCopyWith<$Res> {
  factory _$$GetPrescriptionListImplCopyWith(_$GetPrescriptionListImpl value,
          $Res Function(_$GetPrescriptionListImpl) then) =
      __$$GetPrescriptionListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int appointmentId});
}

/// @nodoc
class __$$GetPrescriptionListImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$GetPrescriptionListImpl>
    implements _$$GetPrescriptionListImplCopyWith<$Res> {
  __$$GetPrescriptionListImplCopyWithImpl(_$GetPrescriptionListImpl _value,
      $Res Function(_$GetPrescriptionListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
  }) {
    return _then(_$GetPrescriptionListImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPrescriptionListImpl implements _GetPrescriptionList {
  const _$GetPrescriptionListImpl({required this.appointmentId});

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
            other is _$GetPrescriptionListImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPrescriptionListImplCopyWith<_$GetPrescriptionListImpl> get copyWith =>
      __$$GetPrescriptionListImplCopyWithImpl<_$GetPrescriptionListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return getPrescriptionList(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return getPrescriptionList?.call(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
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
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
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
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
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
      _$GetPrescriptionListImpl;

  int get appointmentId;
  @JsonKey(ignore: true)
  _$$GetPrescriptionListImplCopyWith<_$GetPrescriptionListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPrescriptionSettingsImplCopyWith<$Res> {
  factory _$$GetPrescriptionSettingsImplCopyWith(
          _$GetPrescriptionSettingsImpl value,
          $Res Function(_$GetPrescriptionSettingsImpl) then) =
      __$$GetPrescriptionSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPrescriptionSettingsImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$GetPrescriptionSettingsImpl>
    implements _$$GetPrescriptionSettingsImplCopyWith<$Res> {
  __$$GetPrescriptionSettingsImplCopyWithImpl(
      _$GetPrescriptionSettingsImpl _value,
      $Res Function(_$GetPrescriptionSettingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPrescriptionSettingsImpl implements _GetPrescriptionSettings {
  const _$GetPrescriptionSettingsImpl();

  @override
  String toString() {
    return 'PrecriptionEvent.getPrescriptionSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrescriptionSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return getPrescriptionSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return getPrescriptionSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
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
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
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
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
    required TResult orElse(),
  }) {
    if (getPrescriptionSettings != null) {
      return getPrescriptionSettings(this);
    }
    return orElse();
  }
}

abstract class _GetPrescriptionSettings implements PrecriptionEvent {
  const factory _GetPrescriptionSettings() = _$GetPrescriptionSettingsImpl;
}

/// @nodoc
abstract class _$$CreatePrescriptionImplCopyWith<$Res> {
  factory _$$CreatePrescriptionImplCopyWith(_$CreatePrescriptionImpl value,
          $Res Function(_$CreatePrescriptionImpl) then) =
      __$$CreatePrescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreatePrescriptionPayload payload});
}

/// @nodoc
class __$$CreatePrescriptionImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$CreatePrescriptionImpl>
    implements _$$CreatePrescriptionImplCopyWith<$Res> {
  __$$CreatePrescriptionImplCopyWithImpl(_$CreatePrescriptionImpl _value,
      $Res Function(_$CreatePrescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CreatePrescriptionImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as CreatePrescriptionPayload,
    ));
  }
}

/// @nodoc

class _$CreatePrescriptionImpl implements _CreatePrescription {
  const _$CreatePrescriptionImpl({required this.payload});

  @override
  final CreatePrescriptionPayload payload;

  @override
  String toString() {
    return 'PrecriptionEvent.createPrescription(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePrescriptionImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePrescriptionImplCopyWith<_$CreatePrescriptionImpl> get copyWith =>
      __$$CreatePrescriptionImplCopyWithImpl<_$CreatePrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return createPrescription(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return createPrescription?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
    required TResult orElse(),
  }) {
    if (createPrescription != null) {
      return createPrescription(payload);
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
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
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
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
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
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
          {required final CreatePrescriptionPayload payload}) =
      _$CreatePrescriptionImpl;

  CreatePrescriptionPayload get payload;
  @JsonKey(ignore: true)
  _$$CreatePrescriptionImplCopyWith<_$CreatePrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrescriptionImplCopyWith<$Res> {
  factory _$$UpdatePrescriptionImplCopyWith(_$UpdatePrescriptionImpl value,
          $Res Function(_$UpdatePrescriptionImpl) then) =
      __$$UpdatePrescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> payload});
}

/// @nodoc
class __$$UpdatePrescriptionImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$UpdatePrescriptionImpl>
    implements _$$UpdatePrescriptionImplCopyWith<$Res> {
  __$$UpdatePrescriptionImplCopyWithImpl(_$UpdatePrescriptionImpl _value,
      $Res Function(_$UpdatePrescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$UpdatePrescriptionImpl(
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdatePrescriptionImpl implements _UpdatePrescription {
  const _$UpdatePrescriptionImpl({required final Map<String, dynamic> payload})
      : _payload = payload;

  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  String toString() {
    return 'PrecriptionEvent.updatePrescription(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrescriptionImpl &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrescriptionImplCopyWith<_$UpdatePrescriptionImpl> get copyWith =>
      __$$UpdatePrescriptionImplCopyWithImpl<_$UpdatePrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return updatePrescription(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return updatePrescription?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
    required TResult orElse(),
  }) {
    if (updatePrescription != null) {
      return updatePrescription(payload);
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
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
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
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
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
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
      {required final Map<String, dynamic> payload}) = _$UpdatePrescriptionImpl;

  Map<String, dynamic> get payload;
  @JsonKey(ignore: true)
  _$$UpdatePrescriptionImplCopyWith<_$UpdatePrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditOrCreatePrescriptionImplCopyWith<$Res> {
  factory _$$EditOrCreatePrescriptionImplCopyWith(
          _$EditOrCreatePrescriptionImpl value,
          $Res Function(_$EditOrCreatePrescriptionImpl) then) =
      __$$EditOrCreatePrescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Prescription prescriptions, bool isEditing, int? index});
}

/// @nodoc
class __$$EditOrCreatePrescriptionImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$EditOrCreatePrescriptionImpl>
    implements _$$EditOrCreatePrescriptionImplCopyWith<$Res> {
  __$$EditOrCreatePrescriptionImplCopyWithImpl(
      _$EditOrCreatePrescriptionImpl _value,
      $Res Function(_$EditOrCreatePrescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptions = null,
    Object? isEditing = null,
    Object? index = freezed,
  }) {
    return _then(_$EditOrCreatePrescriptionImpl(
      prescriptions: null == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as Prescription,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$EditOrCreatePrescriptionImpl implements _EditOrCreatePrescription {
  const _$EditOrCreatePrescriptionImpl(
      {required this.prescriptions, required this.isEditing, this.index});

  @override
  final Prescription prescriptions;
  @override
  final bool isEditing;
  @override
  final int? index;

  @override
  String toString() {
    return 'PrecriptionEvent.editOrCreatePrescription(prescriptions: $prescriptions, isEditing: $isEditing, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditOrCreatePrescriptionImpl &&
            (identical(other.prescriptions, prescriptions) ||
                other.prescriptions == prescriptions) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptions, isEditing, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditOrCreatePrescriptionImplCopyWith<_$EditOrCreatePrescriptionImpl>
      get copyWith => __$$EditOrCreatePrescriptionImplCopyWithImpl<
          _$EditOrCreatePrescriptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return editOrCreatePrescription(prescriptions, isEditing, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return editOrCreatePrescription?.call(prescriptions, isEditing, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
    required TResult orElse(),
  }) {
    if (editOrCreatePrescription != null) {
      return editOrCreatePrescription(prescriptions, isEditing, index);
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
  }) {
    return editOrCreatePrescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
  }) {
    return editOrCreatePrescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
    required TResult orElse(),
  }) {
    if (editOrCreatePrescription != null) {
      return editOrCreatePrescription(this);
    }
    return orElse();
  }
}

abstract class _EditOrCreatePrescription implements PrecriptionEvent {
  const factory _EditOrCreatePrescription(
      {required final Prescription prescriptions,
      required final bool isEditing,
      final int? index}) = _$EditOrCreatePrescriptionImpl;

  Prescription get prescriptions;
  bool get isEditing;
  int? get index;
  @JsonKey(ignore: true)
  _$$EditOrCreatePrescriptionImplCopyWith<_$EditOrCreatePrescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratePdfImplCopyWith<$Res> {
  factory _$$GeneratePdfImplCopyWith(
          _$GeneratePdfImpl value, $Res Function(_$GeneratePdfImpl) then) =
      __$$GeneratePdfImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReportPrescription> data, PdfActions action});
}

/// @nodoc
class __$$GeneratePdfImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$GeneratePdfImpl>
    implements _$$GeneratePdfImplCopyWith<$Res> {
  __$$GeneratePdfImplCopyWithImpl(
      _$GeneratePdfImpl _value, $Res Function(_$GeneratePdfImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? action = null,
  }) {
    return _then(_$GeneratePdfImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReportPrescription>,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as PdfActions,
    ));
  }
}

/// @nodoc

class _$GeneratePdfImpl implements _GeneratePdf {
  const _$GeneratePdfImpl(
      {required final List<ReportPrescription> data, required this.action})
      : _data = data;

  final List<ReportPrescription> _data;
  @override
  List<ReportPrescription> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PdfActions action;

  @override
  String toString() {
    return 'PrecriptionEvent.genaratePdf(data: $data, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratePdfImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratePdfImplCopyWith<_$GeneratePdfImpl> get copyWith =>
      __$$GeneratePdfImplCopyWithImpl<_$GeneratePdfImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return genaratePdf(data, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return genaratePdf?.call(data, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
    required TResult orElse(),
  }) {
    if (genaratePdf != null) {
      return genaratePdf(data, action);
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
  }) {
    return genaratePdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
  }) {
    return genaratePdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
    required TResult orElse(),
  }) {
    if (genaratePdf != null) {
      return genaratePdf(this);
    }
    return orElse();
  }
}

abstract class _GeneratePdf implements PrecriptionEvent {
  const factory _GeneratePdf(
      {required final List<ReportPrescription> data,
      required final PdfActions action}) = _$GeneratePdfImpl;

  List<ReportPrescription> get data;
  PdfActions get action;
  @JsonKey(ignore: true)
  _$$GeneratePdfImplCopyWith<_$GeneratePdfImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePrescriptionImplCopyWith<$Res> {
  factory _$$DeletePrescriptionImplCopyWith(_$DeletePrescriptionImpl value,
          $Res Function(_$DeletePrescriptionImpl) then) =
      __$$DeletePrescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeletePrescriptionImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$DeletePrescriptionImpl>
    implements _$$DeletePrescriptionImplCopyWith<$Res> {
  __$$DeletePrescriptionImplCopyWithImpl(_$DeletePrescriptionImpl _value,
      $Res Function(_$DeletePrescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeletePrescriptionImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePrescriptionImpl implements _DeletePrescription {
  const _$DeletePrescriptionImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PrecriptionEvent.deletePrescription(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePrescriptionImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePrescriptionImplCopyWith<_$DeletePrescriptionImpl> get copyWith =>
      __$$DeletePrescriptionImplCopyWithImpl<_$DeletePrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(CreatePrescriptionPayload payload)
        createPrescription,
    required TResult Function(Map<String, dynamic> payload) updatePrescription,
    required TResult Function(
            Prescription prescriptions, bool isEditing, int? index)
        editOrCreatePrescription,
    required TResult Function(List<ReportPrescription> data, PdfActions action)
        genaratePdf,
    required TResult Function(int index) deletePrescription,
  }) {
    return deletePrescription(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult? Function(Map<String, dynamic> payload)? updatePrescription,
    TResult? Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult? Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult? Function(int index)? deletePrescription,
  }) {
    return deletePrescription?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(CreatePrescriptionPayload payload)? createPrescription,
    TResult Function(Map<String, dynamic> payload)? updatePrescription,
    TResult Function(Prescription prescriptions, bool isEditing, int? index)?
        editOrCreatePrescription,
    TResult Function(List<ReportPrescription> data, PdfActions action)?
        genaratePdf,
    TResult Function(int index)? deletePrescription,
    required TResult orElse(),
  }) {
    if (deletePrescription != null) {
      return deletePrescription(index);
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
    required TResult Function(_EditOrCreatePrescription value)
        editOrCreatePrescription,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
  }) {
    return deletePrescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
    TResult? Function(_EditOrCreatePrescription value)?
        editOrCreatePrescription,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
  }) {
    return deletePrescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    TResult Function(_EditOrCreatePrescription value)? editOrCreatePrescription,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
    required TResult orElse(),
  }) {
    if (deletePrescription != null) {
      return deletePrescription(this);
    }
    return orElse();
  }
}

abstract class _DeletePrescription implements PrecriptionEvent {
  const factory _DeletePrescription({required final int index}) =
      _$DeletePrescriptionImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeletePrescriptionImplCopyWith<_$DeletePrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrecriptionState {
  bool get isGetLoading => throw _privateConstructorUsedError;
  bool get isGetSettingsLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get isCreateLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  int? get deletedIndex => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get updated => throw _privateConstructorUsedError;
  bool get created => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get hasSettingsData => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<DataObjec>? get tobeTakeData => throw _privateConstructorUsedError;
  List<DataObjec>? get timeoftheDayData => throw _privateConstructorUsedError;
  PrescriptionModel? get prescriptionResult =>
      throw _privateConstructorUsedError;
  List<Prescription>? get prescriptions => throw _privateConstructorUsedError;
  PrescriptionSettingsModel? get prescriptionSettingsResult =>
      throw _privateConstructorUsedError;
  bool get isPdfLoading => throw _privateConstructorUsedError;
  bool get pdfCreated => throw _privateConstructorUsedError;
  pw.Document? get pdf => throw _privateConstructorUsedError;
  bool get pdfError => throw _privateConstructorUsedError;
  String get pdfErrorMessage => throw _privateConstructorUsedError;
  CreatePrescriptionPayload? get createPrescriptionPayload =>
      throw _privateConstructorUsedError;
  bool get isCreateHasdata => throw _privateConstructorUsedError;
  PdfActions? get action => throw _privateConstructorUsedError;
  String? get pdfPath => throw _privateConstructorUsedError;

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
      bool isDeleted,
      int? deletedIndex,
      bool isDeleteLoading,
      bool updated,
      bool created,
      bool unauthorized,
      bool isError,
      bool hasData,
      bool hasSettingsData,
      String? message,
      List<DataObjec>? tobeTakeData,
      List<DataObjec>? timeoftheDayData,
      PrescriptionModel? prescriptionResult,
      List<Prescription>? prescriptions,
      PrescriptionSettingsModel? prescriptionSettingsResult,
      bool isPdfLoading,
      bool pdfCreated,
      pw.Document? pdf,
      bool pdfError,
      String pdfErrorMessage,
      CreatePrescriptionPayload? createPrescriptionPayload,
      bool isCreateHasdata,
      PdfActions? action,
      String? pdfPath});
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
    Object? isDeleted = null,
    Object? deletedIndex = freezed,
    Object? isDeleteLoading = null,
    Object? updated = null,
    Object? created = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? hasData = null,
    Object? hasSettingsData = null,
    Object? message = freezed,
    Object? tobeTakeData = freezed,
    Object? timeoftheDayData = freezed,
    Object? prescriptionResult = freezed,
    Object? prescriptions = freezed,
    Object? prescriptionSettingsResult = freezed,
    Object? isPdfLoading = null,
    Object? pdfCreated = null,
    Object? pdf = freezed,
    Object? pdfError = null,
    Object? pdfErrorMessage = null,
    Object? createPrescriptionPayload = freezed,
    Object? isCreateHasdata = null,
    Object? action = freezed,
    Object? pdfPath = freezed,
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
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedIndex: freezed == deletedIndex
          ? _value.deletedIndex
          : deletedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleteLoading: null == isDeleteLoading
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
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
      tobeTakeData: freezed == tobeTakeData
          ? _value.tobeTakeData
          : tobeTakeData // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>?,
      timeoftheDayData: freezed == timeoftheDayData
          ? _value.timeoftheDayData
          : timeoftheDayData // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>?,
      prescriptionResult: freezed == prescriptionResult
          ? _value.prescriptionResult
          : prescriptionResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel?,
      prescriptions: freezed == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<Prescription>?,
      prescriptionSettingsResult: freezed == prescriptionSettingsResult
          ? _value.prescriptionSettingsResult
          : prescriptionSettingsResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionSettingsModel?,
      isPdfLoading: null == isPdfLoading
          ? _value.isPdfLoading
          : isPdfLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfCreated: null == pdfCreated
          ? _value.pdfCreated
          : pdfCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as pw.Document?,
      pdfError: null == pdfError
          ? _value.pdfError
          : pdfError // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfErrorMessage: null == pdfErrorMessage
          ? _value.pdfErrorMessage
          : pdfErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      createPrescriptionPayload: freezed == createPrescriptionPayload
          ? _value.createPrescriptionPayload
          : createPrescriptionPayload // ignore: cast_nullable_to_non_nullable
              as CreatePrescriptionPayload?,
      isCreateHasdata: null == isCreateHasdata
          ? _value.isCreateHasdata
          : isCreateHasdata // ignore: cast_nullable_to_non_nullable
              as bool,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as PdfActions?,
      pdfPath: freezed == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrecriptionStateImplCopyWith<$Res>
    implements $PrecriptionStateCopyWith<$Res> {
  factory _$$PrecriptionStateImplCopyWith(_$PrecriptionStateImpl value,
          $Res Function(_$PrecriptionStateImpl) then) =
      __$$PrecriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isGetLoading,
      bool isGetSettingsLoading,
      bool isUpdateLoading,
      bool isCreateLoading,
      bool isDeleted,
      int? deletedIndex,
      bool isDeleteLoading,
      bool updated,
      bool created,
      bool unauthorized,
      bool isError,
      bool hasData,
      bool hasSettingsData,
      String? message,
      List<DataObjec>? tobeTakeData,
      List<DataObjec>? timeoftheDayData,
      PrescriptionModel? prescriptionResult,
      List<Prescription>? prescriptions,
      PrescriptionSettingsModel? prescriptionSettingsResult,
      bool isPdfLoading,
      bool pdfCreated,
      pw.Document? pdf,
      bool pdfError,
      String pdfErrorMessage,
      CreatePrescriptionPayload? createPrescriptionPayload,
      bool isCreateHasdata,
      PdfActions? action,
      String? pdfPath});
}

/// @nodoc
class __$$PrecriptionStateImplCopyWithImpl<$Res>
    extends _$PrecriptionStateCopyWithImpl<$Res, _$PrecriptionStateImpl>
    implements _$$PrecriptionStateImplCopyWith<$Res> {
  __$$PrecriptionStateImplCopyWithImpl(_$PrecriptionStateImpl _value,
      $Res Function(_$PrecriptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGetLoading = null,
    Object? isGetSettingsLoading = null,
    Object? isUpdateLoading = null,
    Object? isCreateLoading = null,
    Object? isDeleted = null,
    Object? deletedIndex = freezed,
    Object? isDeleteLoading = null,
    Object? updated = null,
    Object? created = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? hasData = null,
    Object? hasSettingsData = null,
    Object? message = freezed,
    Object? tobeTakeData = freezed,
    Object? timeoftheDayData = freezed,
    Object? prescriptionResult = freezed,
    Object? prescriptions = freezed,
    Object? prescriptionSettingsResult = freezed,
    Object? isPdfLoading = null,
    Object? pdfCreated = null,
    Object? pdf = freezed,
    Object? pdfError = null,
    Object? pdfErrorMessage = null,
    Object? createPrescriptionPayload = freezed,
    Object? isCreateHasdata = null,
    Object? action = freezed,
    Object? pdfPath = freezed,
  }) {
    return _then(_$PrecriptionStateImpl(
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
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedIndex: freezed == deletedIndex
          ? _value.deletedIndex
          : deletedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleteLoading: null == isDeleteLoading
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
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
      tobeTakeData: freezed == tobeTakeData
          ? _value._tobeTakeData
          : tobeTakeData // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>?,
      timeoftheDayData: freezed == timeoftheDayData
          ? _value._timeoftheDayData
          : timeoftheDayData // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>?,
      prescriptionResult: freezed == prescriptionResult
          ? _value.prescriptionResult
          : prescriptionResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionModel?,
      prescriptions: freezed == prescriptions
          ? _value._prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<Prescription>?,
      prescriptionSettingsResult: freezed == prescriptionSettingsResult
          ? _value.prescriptionSettingsResult
          : prescriptionSettingsResult // ignore: cast_nullable_to_non_nullable
              as PrescriptionSettingsModel?,
      isPdfLoading: null == isPdfLoading
          ? _value.isPdfLoading
          : isPdfLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfCreated: null == pdfCreated
          ? _value.pdfCreated
          : pdfCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as pw.Document?,
      pdfError: null == pdfError
          ? _value.pdfError
          : pdfError // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfErrorMessage: null == pdfErrorMessage
          ? _value.pdfErrorMessage
          : pdfErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      createPrescriptionPayload: freezed == createPrescriptionPayload
          ? _value.createPrescriptionPayload
          : createPrescriptionPayload // ignore: cast_nullable_to_non_nullable
              as CreatePrescriptionPayload?,
      isCreateHasdata: null == isCreateHasdata
          ? _value.isCreateHasdata
          : isCreateHasdata // ignore: cast_nullable_to_non_nullable
              as bool,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as PdfActions?,
      pdfPath: freezed == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PrecriptionStateImpl implements _PrecriptionState {
  const _$PrecriptionStateImpl(
      {required this.isGetLoading,
      required this.isGetSettingsLoading,
      required this.isUpdateLoading,
      required this.isCreateLoading,
      required this.isDeleted,
      this.deletedIndex,
      required this.isDeleteLoading,
      required this.updated,
      required this.created,
      required this.unauthorized,
      required this.isError,
      required this.hasData,
      required this.hasSettingsData,
      required this.message,
      required final List<DataObjec>? tobeTakeData,
      required final List<DataObjec>? timeoftheDayData,
      this.prescriptionResult,
      final List<Prescription>? prescriptions,
      this.prescriptionSettingsResult,
      required this.isPdfLoading,
      required this.pdfCreated,
      required this.pdf,
      required this.pdfError,
      required this.pdfErrorMessage,
      required this.createPrescriptionPayload,
      required this.isCreateHasdata,
      required this.action,
      this.pdfPath})
      : _tobeTakeData = tobeTakeData,
        _timeoftheDayData = timeoftheDayData,
        _prescriptions = prescriptions;

  @override
  final bool isGetLoading;
  @override
  final bool isGetSettingsLoading;
  @override
  final bool isUpdateLoading;
  @override
  final bool isCreateLoading;
  @override
  final bool isDeleted;
  @override
  final int? deletedIndex;
  @override
  final bool isDeleteLoading;
  @override
  final bool updated;
  @override
  final bool created;
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
  final List<DataObjec>? _tobeTakeData;
  @override
  List<DataObjec>? get tobeTakeData {
    final value = _tobeTakeData;
    if (value == null) return null;
    if (_tobeTakeData is EqualUnmodifiableListView) return _tobeTakeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataObjec>? _timeoftheDayData;
  @override
  List<DataObjec>? get timeoftheDayData {
    final value = _timeoftheDayData;
    if (value == null) return null;
    if (_timeoftheDayData is EqualUnmodifiableListView)
      return _timeoftheDayData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PrescriptionModel? prescriptionResult;
  final List<Prescription>? _prescriptions;
  @override
  List<Prescription>? get prescriptions {
    final value = _prescriptions;
    if (value == null) return null;
    if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PrescriptionSettingsModel? prescriptionSettingsResult;
  @override
  final bool isPdfLoading;
  @override
  final bool pdfCreated;
  @override
  final pw.Document? pdf;
  @override
  final bool pdfError;
  @override
  final String pdfErrorMessage;
  @override
  final CreatePrescriptionPayload? createPrescriptionPayload;
  @override
  final bool isCreateHasdata;
  @override
  final PdfActions? action;
  @override
  final String? pdfPath;

  @override
  String toString() {
    return 'PrecriptionState(isGetLoading: $isGetLoading, isGetSettingsLoading: $isGetSettingsLoading, isUpdateLoading: $isUpdateLoading, isCreateLoading: $isCreateLoading, isDeleted: $isDeleted, deletedIndex: $deletedIndex, isDeleteLoading: $isDeleteLoading, updated: $updated, created: $created, unauthorized: $unauthorized, isError: $isError, hasData: $hasData, hasSettingsData: $hasSettingsData, message: $message, tobeTakeData: $tobeTakeData, timeoftheDayData: $timeoftheDayData, prescriptionResult: $prescriptionResult, prescriptions: $prescriptions, prescriptionSettingsResult: $prescriptionSettingsResult, isPdfLoading: $isPdfLoading, pdfCreated: $pdfCreated, pdf: $pdf, pdfError: $pdfError, pdfErrorMessage: $pdfErrorMessage, createPrescriptionPayload: $createPrescriptionPayload, isCreateHasdata: $isCreateHasdata, action: $action, pdfPath: $pdfPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrecriptionStateImpl &&
            (identical(other.isGetLoading, isGetLoading) ||
                other.isGetLoading == isGetLoading) &&
            (identical(other.isGetSettingsLoading, isGetSettingsLoading) ||
                other.isGetSettingsLoading == isGetSettingsLoading) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.isCreateLoading, isCreateLoading) ||
                other.isCreateLoading == isCreateLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deletedIndex, deletedIndex) ||
                other.deletedIndex == deletedIndex) &&
            (identical(other.isDeleteLoading, isDeleteLoading) ||
                other.isDeleteLoading == isDeleteLoading) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.hasSettingsData, hasSettingsData) ||
                other.hasSettingsData == hasSettingsData) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._tobeTakeData, _tobeTakeData) &&
            const DeepCollectionEquality()
                .equals(other._timeoftheDayData, _timeoftheDayData) &&
            (identical(other.prescriptionResult, prescriptionResult) ||
                other.prescriptionResult == prescriptionResult) &&
            const DeepCollectionEquality()
                .equals(other._prescriptions, _prescriptions) &&
            (identical(other.prescriptionSettingsResult,
                    prescriptionSettingsResult) ||
                other.prescriptionSettingsResult ==
                    prescriptionSettingsResult) &&
            (identical(other.isPdfLoading, isPdfLoading) ||
                other.isPdfLoading == isPdfLoading) &&
            (identical(other.pdfCreated, pdfCreated) ||
                other.pdfCreated == pdfCreated) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.pdfError, pdfError) ||
                other.pdfError == pdfError) &&
            (identical(other.pdfErrorMessage, pdfErrorMessage) ||
                other.pdfErrorMessage == pdfErrorMessage) &&
            (identical(other.createPrescriptionPayload,
                    createPrescriptionPayload) ||
                other.createPrescriptionPayload == createPrescriptionPayload) &&
            (identical(other.isCreateHasdata, isCreateHasdata) ||
                other.isCreateHasdata == isCreateHasdata) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.pdfPath, pdfPath) || other.pdfPath == pdfPath));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isGetLoading,
        isGetSettingsLoading,
        isUpdateLoading,
        isCreateLoading,
        isDeleted,
        deletedIndex,
        isDeleteLoading,
        updated,
        created,
        unauthorized,
        isError,
        hasData,
        hasSettingsData,
        message,
        const DeepCollectionEquality().hash(_tobeTakeData),
        const DeepCollectionEquality().hash(_timeoftheDayData),
        prescriptionResult,
        const DeepCollectionEquality().hash(_prescriptions),
        prescriptionSettingsResult,
        isPdfLoading,
        pdfCreated,
        pdf,
        pdfError,
        pdfErrorMessage,
        createPrescriptionPayload,
        isCreateHasdata,
        action,
        pdfPath
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrecriptionStateImplCopyWith<_$PrecriptionStateImpl> get copyWith =>
      __$$PrecriptionStateImplCopyWithImpl<_$PrecriptionStateImpl>(
          this, _$identity);
}

abstract class _PrecriptionState implements PrecriptionState {
  const factory _PrecriptionState(
      {required final bool isGetLoading,
      required final bool isGetSettingsLoading,
      required final bool isUpdateLoading,
      required final bool isCreateLoading,
      required final bool isDeleted,
      final int? deletedIndex,
      required final bool isDeleteLoading,
      required final bool updated,
      required final bool created,
      required final bool unauthorized,
      required final bool isError,
      required final bool hasData,
      required final bool hasSettingsData,
      required final String? message,
      required final List<DataObjec>? tobeTakeData,
      required final List<DataObjec>? timeoftheDayData,
      final PrescriptionModel? prescriptionResult,
      final List<Prescription>? prescriptions,
      final PrescriptionSettingsModel? prescriptionSettingsResult,
      required final bool isPdfLoading,
      required final bool pdfCreated,
      required final pw.Document? pdf,
      required final bool pdfError,
      required final String pdfErrorMessage,
      required final CreatePrescriptionPayload? createPrescriptionPayload,
      required final bool isCreateHasdata,
      required final PdfActions? action,
      final String? pdfPath}) = _$PrecriptionStateImpl;

  @override
  bool get isGetLoading;
  @override
  bool get isGetSettingsLoading;
  @override
  bool get isUpdateLoading;
  @override
  bool get isCreateLoading;
  @override
  bool get isDeleted;
  @override
  int? get deletedIndex;
  @override
  bool get isDeleteLoading;
  @override
  bool get updated;
  @override
  bool get created;
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
  List<DataObjec>? get tobeTakeData;
  @override
  List<DataObjec>? get timeoftheDayData;
  @override
  PrescriptionModel? get prescriptionResult;
  @override
  List<Prescription>? get prescriptions;
  @override
  PrescriptionSettingsModel? get prescriptionSettingsResult;
  @override
  bool get isPdfLoading;
  @override
  bool get pdfCreated;
  @override
  pw.Document? get pdf;
  @override
  bool get pdfError;
  @override
  String get pdfErrorMessage;
  @override
  CreatePrescriptionPayload? get createPrescriptionPayload;
  @override
  bool get isCreateHasdata;
  @override
  PdfActions? get action;
  @override
  String? get pdfPath;
  @override
  @JsonKey(ignore: true)
  _$$PrecriptionStateImplCopyWith<_$PrecriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
