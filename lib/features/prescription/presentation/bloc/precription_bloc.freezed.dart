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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return getPrescriptionList(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return getPrescriptionList?.call(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return getPrescriptionSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return getPrescriptionSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
  const factory _GetPrescriptionSettings() = _$_GetPrescriptionSettings;
}

/// @nodoc
abstract class _$$_CreatePrescriptionCopyWith<$Res> {
  factory _$$_CreatePrescriptionCopyWith(_$_CreatePrescription value,
          $Res Function(_$_CreatePrescription) then) =
      __$$_CreatePrescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({PrescriptionElement prescriptionElement});
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
    Object? prescriptionElement = null,
  }) {
    return _then(_$_CreatePrescription(
      prescriptionElement: null == prescriptionElement
          ? _value.prescriptionElement
          : prescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrescriptionElement,
    ));
  }
}

/// @nodoc

class _$_CreatePrescription implements _CreatePrescription {
  const _$_CreatePrescription({required this.prescriptionElement});

  @override
  final PrescriptionElement prescriptionElement;

  @override
  String toString() {
    return 'PrecriptionEvent.createPrescription(prescriptionElement: $prescriptionElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePrescription &&
            (identical(other.prescriptionElement, prescriptionElement) ||
                other.prescriptionElement == prescriptionElement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionElement);

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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return createPrescription(prescriptionElement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return createPrescription?.call(prescriptionElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
    required TResult orElse(),
  }) {
    if (createPrescription != null) {
      return createPrescription(prescriptionElement);
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
          {required final PrescriptionElement prescriptionElement}) =
      _$_CreatePrescription;

  PrescriptionElement get prescriptionElement;
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
  $Res call({PrescriptionElement prescriptionElement});
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
    Object? prescriptionElement = null,
  }) {
    return _then(_$_UpdatePrescription(
      prescriptionElement: null == prescriptionElement
          ? _value.prescriptionElement
          : prescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrescriptionElement,
    ));
  }
}

/// @nodoc

class _$_UpdatePrescription implements _UpdatePrescription {
  const _$_UpdatePrescription({required this.prescriptionElement});

  @override
  final PrescriptionElement prescriptionElement;

  @override
  String toString() {
    return 'PrecriptionEvent.updatePrescription(prescriptionElement: $prescriptionElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePrescription &&
            (identical(other.prescriptionElement, prescriptionElement) ||
                other.prescriptionElement == prescriptionElement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionElement);

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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return updatePrescription(prescriptionElement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return updatePrescription?.call(prescriptionElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
    required TResult orElse(),
  }) {
    if (updatePrescription != null) {
      return updatePrescription(prescriptionElement);
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
          {required final PrescriptionElement prescriptionElement}) =
      _$_UpdatePrescription;

  PrescriptionElement get prescriptionElement;
  @JsonKey(ignore: true)
  _$$_UpdatePrescriptionCopyWith<_$_UpdatePrescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectTimeOfTheDayCopyWith<$Res> {
  factory _$$_SelectTimeOfTheDayCopyWith(_$_SelectTimeOfTheDay value,
          $Res Function(_$_SelectTimeOfTheDay) then) =
      __$$_SelectTimeOfTheDayCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DataObjec> data});
}

/// @nodoc
class __$$_SelectTimeOfTheDayCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_SelectTimeOfTheDay>
    implements _$$_SelectTimeOfTheDayCopyWith<$Res> {
  __$$_SelectTimeOfTheDayCopyWithImpl(
      _$_SelectTimeOfTheDay _value, $Res Function(_$_SelectTimeOfTheDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SelectTimeOfTheDay(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>,
    ));
  }
}

/// @nodoc

class _$_SelectTimeOfTheDay implements _SelectTimeOfTheDay {
  const _$_SelectTimeOfTheDay({required final List<DataObjec> data})
      : _data = data;

  final List<DataObjec> _data;
  @override
  List<DataObjec> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PrecriptionEvent.selectTimeOfTheDay(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTimeOfTheDay &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTimeOfTheDayCopyWith<_$_SelectTimeOfTheDay> get copyWith =>
      __$$_SelectTimeOfTheDayCopyWithImpl<_$_SelectTimeOfTheDay>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return selectTimeOfTheDay(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return selectTimeOfTheDay?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
    required TResult orElse(),
  }) {
    if (selectTimeOfTheDay != null) {
      return selectTimeOfTheDay(data);
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
  }) {
    return selectTimeOfTheDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
  }) {
    return selectTimeOfTheDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
    required TResult orElse(),
  }) {
    if (selectTimeOfTheDay != null) {
      return selectTimeOfTheDay(this);
    }
    return orElse();
  }
}

abstract class _SelectTimeOfTheDay implements PrecriptionEvent {
  const factory _SelectTimeOfTheDay({required final List<DataObjec> data}) =
      _$_SelectTimeOfTheDay;

  List<DataObjec> get data;
  @JsonKey(ignore: true)
  _$$_SelectTimeOfTheDayCopyWith<_$_SelectTimeOfTheDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectTobetakenCopyWith<$Res> {
  factory _$$_SelectTobetakenCopyWith(
          _$_SelectTobetaken value, $Res Function(_$_SelectTobetaken) then) =
      __$$_SelectTobetakenCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DataObjec> data});
}

/// @nodoc
class __$$_SelectTobetakenCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_SelectTobetaken>
    implements _$$_SelectTobetakenCopyWith<$Res> {
  __$$_SelectTobetakenCopyWithImpl(
      _$_SelectTobetaken _value, $Res Function(_$_SelectTobetaken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SelectTobetaken(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>,
    ));
  }
}

/// @nodoc

class _$_SelectTobetaken implements _SelectTobetaken {
  const _$_SelectTobetaken({required final List<DataObjec> data})
      : _data = data;

  final List<DataObjec> _data;
  @override
  List<DataObjec> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PrecriptionEvent.selectTobetaken(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTobetaken &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTobetakenCopyWith<_$_SelectTobetaken> get copyWith =>
      __$$_SelectTobetakenCopyWithImpl<_$_SelectTobetaken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return selectTobetaken(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return selectTobetaken?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
    required TResult orElse(),
  }) {
    if (selectTobetaken != null) {
      return selectTobetaken(data);
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_DeletePrescription value) deletePrescription,
  }) {
    return selectTobetaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult? Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult? Function(_CreatePrescription value)? createPrescription,
    TResult? Function(_UpdatePrescription value)? updatePrescription,
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_DeletePrescription value)? deletePrescription,
  }) {
    return selectTobetaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrescriptionList value)? getPrescriptionList,
    TResult Function(_GetPrescriptionSettings value)? getPrescriptionSettings,
    TResult Function(_CreatePrescription value)? createPrescription,
    TResult Function(_UpdatePrescription value)? updatePrescription,
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_DeletePrescription value)? deletePrescription,
    required TResult orElse(),
  }) {
    if (selectTobetaken != null) {
      return selectTobetaken(this);
    }
    return orElse();
  }
}

abstract class _SelectTobetaken implements PrecriptionEvent {
  const factory _SelectTobetaken({required final List<DataObjec> data}) =
      _$_SelectTobetaken;

  List<DataObjec> get data;
  @JsonKey(ignore: true)
  _$$_SelectTobetakenCopyWith<_$_SelectTobetaken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GeneratePdfCopyWith<$Res> {
  factory _$$_GeneratePdfCopyWith(
          _$_GeneratePdf value, $Res Function(_$_GeneratePdf) then) =
      __$$_GeneratePdfCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PrescriptionPdfModel> data});
}

/// @nodoc
class __$$_GeneratePdfCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_GeneratePdf>
    implements _$$_GeneratePdfCopyWith<$Res> {
  __$$_GeneratePdfCopyWithImpl(
      _$_GeneratePdf _value, $Res Function(_$_GeneratePdf) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GeneratePdf(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionPdfModel>,
    ));
  }
}

/// @nodoc

class _$_GeneratePdf implements _GeneratePdf {
  const _$_GeneratePdf({required final List<PrescriptionPdfModel> data})
      : _data = data;

  final List<PrescriptionPdfModel> _data;
  @override
  List<PrescriptionPdfModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PrecriptionEvent.genaratePdf(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratePdf &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneratePdfCopyWith<_$_GeneratePdf> get copyWith =>
      __$$_GeneratePdfCopyWithImpl<_$_GeneratePdf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return genaratePdf(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return genaratePdf?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
    required TResult orElse(),
  }) {
    if (genaratePdf != null) {
      return genaratePdf(data);
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
  const factory _GeneratePdf({required final List<PrescriptionPdfModel> data}) =
      _$_GeneratePdf;

  List<PrescriptionPdfModel> get data;
  @JsonKey(ignore: true)
  _$$_GeneratePdfCopyWith<_$_GeneratePdf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePrescriptionCopyWith<$Res> {
  factory _$$_DeletePrescriptionCopyWith(_$_DeletePrescription value,
          $Res Function(_$_DeletePrescription) then) =
      __$$_DeletePrescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeletePrescriptionCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$_DeletePrescription>
    implements _$$_DeletePrescriptionCopyWith<$Res> {
  __$$_DeletePrescriptionCopyWithImpl(
      _$_DeletePrescription _value, $Res Function(_$_DeletePrescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeletePrescription(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeletePrescription implements _DeletePrescription {
  const _$_DeletePrescription({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'PrecriptionEvent.deletePrescription(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePrescription &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePrescriptionCopyWith<_$_DeletePrescription> get copyWith =>
      __$$_DeletePrescriptionCopyWithImpl<_$_DeletePrescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int appointmentId) getPrescriptionList,
    required TResult Function() getPrescriptionSettings,
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(String id) deletePrescription,
  }) {
    return deletePrescription(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int appointmentId)? getPrescriptionList,
    TResult? Function()? getPrescriptionSettings,
    TResult? Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult? Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult? Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult? Function(List<DataObjec> data)? selectTobetaken,
    TResult? Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult? Function(String id)? deletePrescription,
  }) {
    return deletePrescription?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int appointmentId)? getPrescriptionList,
    TResult Function()? getPrescriptionSettings,
    TResult Function(PrescriptionElement prescriptionElement)?
        createPrescription,
    TResult Function(PrescriptionElement prescriptionElement)?
        updatePrescription,
    TResult Function(List<DataObjec> data)? selectTimeOfTheDay,
    TResult Function(List<DataObjec> data)? selectTobetaken,
    TResult Function(List<PrescriptionPdfModel> data)? genaratePdf,
    TResult Function(String id)? deletePrescription,
    required TResult orElse(),
  }) {
    if (deletePrescription != null) {
      return deletePrescription(id);
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
    required TResult Function(_SelectTimeOfTheDay value) selectTimeOfTheDay,
    required TResult Function(_SelectTobetaken value) selectTobetaken,
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
    TResult? Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult? Function(_SelectTobetaken value)? selectTobetaken,
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
    TResult Function(_SelectTimeOfTheDay value)? selectTimeOfTheDay,
    TResult Function(_SelectTobetaken value)? selectTobetaken,
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
  const factory _DeletePrescription({required final String id}) =
      _$_DeletePrescription;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeletePrescriptionCopyWith<_$_DeletePrescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrecriptionState {
  bool get isGetLoading => throw _privateConstructorUsedError;
  bool get isGetSettingsLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get isCreateLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
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
  DeletePrescriptionModel? get deleteResponse =>
      throw _privateConstructorUsedError;
  PrescriptionSettingsModel? get prescriptionSettingsResult =>
      throw _privateConstructorUsedError;
  bool get isPdfLoading => throw _privateConstructorUsedError;
  bool get pdfCreated => throw _privateConstructorUsedError;
  pw.Document? get pdf => throw _privateConstructorUsedError;
  bool get pdfError => throw _privateConstructorUsedError;
  String get pdfErrorMessage => throw _privateConstructorUsedError;
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
      DeletePrescriptionModel? deleteResponse,
      PrescriptionSettingsModel? prescriptionSettingsResult,
      bool isPdfLoading,
      bool pdfCreated,
      pw.Document? pdf,
      bool pdfError,
      String pdfErrorMessage,
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
    Object? deleteResponse = freezed,
    Object? prescriptionSettingsResult = freezed,
    Object? isPdfLoading = null,
    Object? pdfCreated = null,
    Object? pdf = freezed,
    Object? pdfError = null,
    Object? pdfErrorMessage = null,
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
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as DeletePrescriptionModel?,
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
      pdfPath: freezed == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      bool isDeleted,
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
      DeletePrescriptionModel? deleteResponse,
      PrescriptionSettingsModel? prescriptionSettingsResult,
      bool isPdfLoading,
      bool pdfCreated,
      pw.Document? pdf,
      bool pdfError,
      String pdfErrorMessage,
      String? pdfPath});
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
    Object? isDeleted = null,
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
    Object? deleteResponse = freezed,
    Object? prescriptionSettingsResult = freezed,
    Object? isPdfLoading = null,
    Object? pdfCreated = null,
    Object? pdf = freezed,
    Object? pdfError = null,
    Object? pdfErrorMessage = null,
    Object? pdfPath = freezed,
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
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
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
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as DeletePrescriptionModel?,
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
      pdfPath: freezed == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      required this.isDeleted,
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
      this.deleteResponse,
      this.prescriptionSettingsResult,
      required this.isPdfLoading,
      required this.pdfCreated,
      required this.pdf,
      required this.pdfError,
      required this.pdfErrorMessage,
      this.pdfPath})
      : _tobeTakeData = tobeTakeData,
        _timeoftheDayData = timeoftheDayData;

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
  @override
  final DeletePrescriptionModel? deleteResponse;
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
  final String? pdfPath;

  @override
  String toString() {
    return 'PrecriptionState(isGetLoading: $isGetLoading, isGetSettingsLoading: $isGetSettingsLoading, isUpdateLoading: $isUpdateLoading, isCreateLoading: $isCreateLoading, isDeleted: $isDeleted, isDeleteLoading: $isDeleteLoading, updated: $updated, created: $created, unauthorized: $unauthorized, isError: $isError, hasData: $hasData, hasSettingsData: $hasSettingsData, message: $message, tobeTakeData: $tobeTakeData, timeoftheDayData: $timeoftheDayData, prescriptionResult: $prescriptionResult, deleteResponse: $deleteResponse, prescriptionSettingsResult: $prescriptionSettingsResult, isPdfLoading: $isPdfLoading, pdfCreated: $pdfCreated, pdf: $pdf, pdfError: $pdfError, pdfErrorMessage: $pdfErrorMessage, pdfPath: $pdfPath)';
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
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
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
            (identical(other.deleteResponse, deleteResponse) ||
                other.deleteResponse == deleteResponse) &&
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
        deleteResponse,
        prescriptionSettingsResult,
        isPdfLoading,
        pdfCreated,
        pdf,
        pdfError,
        pdfErrorMessage,
        pdfPath
      ]);

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
      required final bool isDeleted,
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
      final DeletePrescriptionModel? deleteResponse,
      final PrescriptionSettingsModel? prescriptionSettingsResult,
      required final bool isPdfLoading,
      required final bool pdfCreated,
      required final pw.Document? pdf,
      required final bool pdfError,
      required final String pdfErrorMessage,
      final String? pdfPath}) = _$_PrecriptionState;

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
  DeletePrescriptionModel? get deleteResponse;
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
  String? get pdfPath;
  @override
  @JsonKey(ignore: true)
  _$$_PrecriptionStateCopyWith<_$_PrecriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
