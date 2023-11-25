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
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
  const factory _GetPrescriptionSettings() = _$GetPrescriptionSettingsImpl;
}

/// @nodoc
abstract class _$$CreatePrescriptionImplCopyWith<$Res> {
  factory _$$CreatePrescriptionImplCopyWith(_$CreatePrescriptionImpl value,
          $Res Function(_$CreatePrescriptionImpl) then) =
      __$$CreatePrescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PrescriptionElement prescriptionElement});
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
    Object? prescriptionElement = null,
  }) {
    return _then(_$CreatePrescriptionImpl(
      prescriptionElement: null == prescriptionElement
          ? _value.prescriptionElement
          : prescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrescriptionElement,
    ));
  }
}

/// @nodoc

class _$CreatePrescriptionImpl implements _CreatePrescription {
  const _$CreatePrescriptionImpl({required this.prescriptionElement});

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
            other is _$CreatePrescriptionImpl &&
            (identical(other.prescriptionElement, prescriptionElement) ||
                other.prescriptionElement == prescriptionElement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionElement);

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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
      _$CreatePrescriptionImpl;

  PrescriptionElement get prescriptionElement;
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
  $Res call({PrescriptionElement prescriptionElement});
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
    Object? prescriptionElement = null,
  }) {
    return _then(_$UpdatePrescriptionImpl(
      prescriptionElement: null == prescriptionElement
          ? _value.prescriptionElement
          : prescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrescriptionElement,
    ));
  }
}

/// @nodoc

class _$UpdatePrescriptionImpl implements _UpdatePrescription {
  const _$UpdatePrescriptionImpl({required this.prescriptionElement});

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
            other is _$UpdatePrescriptionImpl &&
            (identical(other.prescriptionElement, prescriptionElement) ||
                other.prescriptionElement == prescriptionElement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionElement);

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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
      _$UpdatePrescriptionImpl;

  PrescriptionElement get prescriptionElement;
  @JsonKey(ignore: true)
  _$$UpdatePrescriptionImplCopyWith<_$UpdatePrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTimeOfTheDayImplCopyWith<$Res> {
  factory _$$SelectTimeOfTheDayImplCopyWith(_$SelectTimeOfTheDayImpl value,
          $Res Function(_$SelectTimeOfTheDayImpl) then) =
      __$$SelectTimeOfTheDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DataObjec> data});
}

/// @nodoc
class __$$SelectTimeOfTheDayImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$SelectTimeOfTheDayImpl>
    implements _$$SelectTimeOfTheDayImplCopyWith<$Res> {
  __$$SelectTimeOfTheDayImplCopyWithImpl(_$SelectTimeOfTheDayImpl _value,
      $Res Function(_$SelectTimeOfTheDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SelectTimeOfTheDayImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>,
    ));
  }
}

/// @nodoc

class _$SelectTimeOfTheDayImpl implements _SelectTimeOfTheDay {
  const _$SelectTimeOfTheDayImpl({required final List<DataObjec> data})
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
            other is _$SelectTimeOfTheDayImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTimeOfTheDayImplCopyWith<_$SelectTimeOfTheDayImpl> get copyWith =>
      __$$SelectTimeOfTheDayImplCopyWithImpl<_$SelectTimeOfTheDayImpl>(
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
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
      _$SelectTimeOfTheDayImpl;

  List<DataObjec> get data;
  @JsonKey(ignore: true)
  _$$SelectTimeOfTheDayImplCopyWith<_$SelectTimeOfTheDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTobetakenImplCopyWith<$Res> {
  factory _$$SelectTobetakenImplCopyWith(_$SelectTobetakenImpl value,
          $Res Function(_$SelectTobetakenImpl) then) =
      __$$SelectTobetakenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DataObjec> data});
}

/// @nodoc
class __$$SelectTobetakenImplCopyWithImpl<$Res>
    extends _$PrecriptionEventCopyWithImpl<$Res, _$SelectTobetakenImpl>
    implements _$$SelectTobetakenImplCopyWith<$Res> {
  __$$SelectTobetakenImplCopyWithImpl(
      _$SelectTobetakenImpl _value, $Res Function(_$SelectTobetakenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SelectTobetakenImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataObjec>,
    ));
  }
}

/// @nodoc

class _$SelectTobetakenImpl implements _SelectTobetaken {
  const _$SelectTobetakenImpl({required final List<DataObjec> data})
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
            other is _$SelectTobetakenImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTobetakenImplCopyWith<_$SelectTobetakenImpl> get copyWith =>
      __$$SelectTobetakenImplCopyWithImpl<_$SelectTobetakenImpl>(
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
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
      _$SelectTobetakenImpl;

  List<DataObjec> get data;
  @JsonKey(ignore: true)
  _$$SelectTobetakenImplCopyWith<_$SelectTobetakenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratePdfImplCopyWith<$Res> {
  factory _$$GeneratePdfImplCopyWith(
          _$GeneratePdfImpl value, $Res Function(_$GeneratePdfImpl) then) =
      __$$GeneratePdfImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PrescriptionPdfModel> data});
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
  }) {
    return _then(_$GeneratePdfImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionPdfModel>,
    ));
  }
}

/// @nodoc

class _$GeneratePdfImpl implements _GeneratePdf {
  const _$GeneratePdfImpl({required final List<PrescriptionPdfModel> data})
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
            other is _$GeneratePdfImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(int pno, int appoinmentId) deletePrescription,
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
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
      _$GeneratePdfImpl;

  List<PrescriptionPdfModel> get data;
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
  $Res call({int pno, int appoinmentId});
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
    Object? pno = null,
    Object? appoinmentId = null,
  }) {
    return _then(_$DeletePrescriptionImpl(
      pno: null == pno
          ? _value.pno
          : pno // ignore: cast_nullable_to_non_nullable
              as int,
      appoinmentId: null == appoinmentId
          ? _value.appoinmentId
          : appoinmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePrescriptionImpl implements _DeletePrescription {
  const _$DeletePrescriptionImpl(
      {required this.pno, required this.appoinmentId});

  @override
  final int pno;
  @override
  final int appoinmentId;

  @override
  String toString() {
    return 'PrecriptionEvent.deletePrescription(pno: $pno, appoinmentId: $appoinmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePrescriptionImpl &&
            (identical(other.pno, pno) || other.pno == pno) &&
            (identical(other.appoinmentId, appoinmentId) ||
                other.appoinmentId == appoinmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pno, appoinmentId);

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
    required TResult Function(PrescriptionElement prescriptionElement)
        createPrescription,
    required TResult Function(PrescriptionElement prescriptionElement)
        updatePrescription,
    required TResult Function(List<DataObjec> data) selectTimeOfTheDay,
    required TResult Function(List<DataObjec> data) selectTobetaken,
    required TResult Function(List<PrescriptionPdfModel> data) genaratePdf,
    required TResult Function(int pno, int appoinmentId) deletePrescription,
  }) {
    return deletePrescription(pno, appoinmentId);
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
    TResult? Function(int pno, int appoinmentId)? deletePrescription,
  }) {
    return deletePrescription?.call(pno, appoinmentId);
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
    TResult Function(int pno, int appoinmentId)? deletePrescription,
    required TResult orElse(),
  }) {
    if (deletePrescription != null) {
      return deletePrescription(pno, appoinmentId);
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
  const factory _DeletePrescription(
      {required final int pno,
      required final int appoinmentId}) = _$DeletePrescriptionImpl;

  int get pno;
  int get appoinmentId;
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

class _$PrecriptionStateImpl implements _PrecriptionState {
  const _$PrecriptionStateImpl(
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
  _$$PrecriptionStateImplCopyWith<_$PrecriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
