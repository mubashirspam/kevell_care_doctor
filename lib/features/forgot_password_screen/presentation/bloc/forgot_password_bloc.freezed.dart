// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOTP,
    required TResult Function(String email, String otp, String passwrod)
        setNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOTP,
    TResult? Function(String email, String otp, String passwrod)?
        setNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOTP,
    TResult Function(String email, String otp, String passwrod)? setNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_SetNewPassword value) setNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_SetNewPassword value)? setNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_SetNewPassword value)? setNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOTPImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$SendOTPImplCopyWith(
          _$SendOTPImpl value, $Res Function(_$SendOTPImpl) then) =
      __$$SendOTPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendOTPImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$SendOTPImpl>
    implements _$$SendOTPImplCopyWith<$Res> {
  __$$SendOTPImplCopyWithImpl(
      _$SendOTPImpl _value, $Res Function(_$SendOTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendOTPImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOTPImpl implements _SendOTP {
  const _$SendOTPImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.sendOTP(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      __$$SendOTPImplCopyWithImpl<_$SendOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOTP,
    required TResult Function(String email, String otp, String passwrod)
        setNewPassword,
  }) {
    return sendOTP(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOTP,
    TResult? Function(String email, String otp, String passwrod)?
        setNewPassword,
  }) {
    return sendOTP?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOTP,
    TResult Function(String email, String otp, String passwrod)? setNewPassword,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_SetNewPassword value) setNewPassword,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_SetNewPassword value)? setNewPassword,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_SetNewPassword value)? setNewPassword,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class _SendOTP implements ForgotPasswordEvent {
  const factory _SendOTP({required final String email}) = _$SendOTPImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNewPasswordImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$SetNewPasswordImplCopyWith(_$SetNewPasswordImpl value,
          $Res Function(_$SetNewPasswordImpl) then) =
      __$$SetNewPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otp, String passwrod});
}

/// @nodoc
class __$$SetNewPasswordImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$SetNewPasswordImpl>
    implements _$$SetNewPasswordImplCopyWith<$Res> {
  __$$SetNewPasswordImplCopyWithImpl(
      _$SetNewPasswordImpl _value, $Res Function(_$SetNewPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? passwrod = null,
  }) {
    return _then(_$SetNewPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      passwrod: null == passwrod
          ? _value.passwrod
          : passwrod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNewPasswordImpl implements _SetNewPassword {
  const _$SetNewPasswordImpl(
      {required this.email, required this.otp, required this.passwrod});

  @override
  final String email;
  @override
  final String otp;
  @override
  final String passwrod;

  @override
  String toString() {
    return 'ForgotPasswordEvent.setNewPassword(email: $email, otp: $otp, passwrod: $passwrod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.passwrod, passwrod) ||
                other.passwrod == passwrod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otp, passwrod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewPasswordImplCopyWith<_$SetNewPasswordImpl> get copyWith =>
      __$$SetNewPasswordImplCopyWithImpl<_$SetNewPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOTP,
    required TResult Function(String email, String otp, String passwrod)
        setNewPassword,
  }) {
    return setNewPassword(email, otp, passwrod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOTP,
    TResult? Function(String email, String otp, String passwrod)?
        setNewPassword,
  }) {
    return setNewPassword?.call(email, otp, passwrod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOTP,
    TResult Function(String email, String otp, String passwrod)? setNewPassword,
    required TResult orElse(),
  }) {
    if (setNewPassword != null) {
      return setNewPassword(email, otp, passwrod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_SetNewPassword value) setNewPassword,
  }) {
    return setNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_SetNewPassword value)? setNewPassword,
  }) {
    return setNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_SetNewPassword value)? setNewPassword,
    required TResult orElse(),
  }) {
    if (setNewPassword != null) {
      return setNewPassword(this);
    }
    return orElse();
  }
}

abstract class _SetNewPassword implements ForgotPasswordEvent {
  const factory _SetNewPassword(
      {required final String email,
      required final String otp,
      required final String passwrod}) = _$SetNewPasswordImpl;

  @override
  String get email;
  String get otp;
  String get passwrod;
  @override
  @JsonKey(ignore: true)
  _$$SetNewPasswordImplCopyWith<_$SetNewPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isOtpSendError => throw _privateConstructorUsedError;
  bool get isPasswordError => throw _privateConstructorUsedError;
  bool get hasOtpSended => throw _privateConstructorUsedError;
  bool get haspasswordChanged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isOtpSendError,
      bool isPasswordError,
      bool hasOtpSended,
      bool haspasswordChanged});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isOtpSendError = null,
    Object? isPasswordError = null,
    Object? hasOtpSended = null,
    Object? haspasswordChanged = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isOtpSendError: null == isOtpSendError
          ? _value.isOtpSendError
          : isOtpSendError // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordError: null == isPasswordError
          ? _value.isPasswordError
          : isPasswordError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOtpSended: null == hasOtpSended
          ? _value.hasOtpSended
          : hasOtpSended // ignore: cast_nullable_to_non_nullable
              as bool,
      haspasswordChanged: null == haspasswordChanged
          ? _value.haspasswordChanged
          : haspasswordChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isOtpSendError,
      bool isPasswordError,
      bool hasOtpSended,
      bool haspasswordChanged});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isOtpSendError = null,
    Object? isPasswordError = null,
    Object? hasOtpSended = null,
    Object? haspasswordChanged = null,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isOtpSendError: null == isOtpSendError
          ? _value.isOtpSendError
          : isOtpSendError // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordError: null == isPasswordError
          ? _value.isPasswordError
          : isPasswordError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOtpSended: null == hasOtpSended
          ? _value.hasOtpSended
          : hasOtpSended // ignore: cast_nullable_to_non_nullable
              as bool,
      haspasswordChanged: null == haspasswordChanged
          ? _value.haspasswordChanged
          : haspasswordChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {required this.isLoading,
      required this.message,
      required this.isOtpSendError,
      required this.isPasswordError,
      required this.hasOtpSended,
      required this.haspasswordChanged});

  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool isOtpSendError;
  @override
  final bool isPasswordError;
  @override
  final bool hasOtpSended;
  @override
  final bool haspasswordChanged;

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, message: $message, isOtpSendError: $isOtpSendError, isPasswordError: $isPasswordError, hasOtpSended: $hasOtpSended, haspasswordChanged: $haspasswordChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isOtpSendError, isOtpSendError) ||
                other.isOtpSendError == isOtpSendError) &&
            (identical(other.isPasswordError, isPasswordError) ||
                other.isPasswordError == isPasswordError) &&
            (identical(other.hasOtpSended, hasOtpSended) ||
                other.hasOtpSended == hasOtpSended) &&
            (identical(other.haspasswordChanged, haspasswordChanged) ||
                other.haspasswordChanged == haspasswordChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, message,
      isOtpSendError, isPasswordError, hasOtpSended, haspasswordChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final bool isLoading,
      required final String message,
      required final bool isOtpSendError,
      required final bool isPasswordError,
      required final bool hasOtpSended,
      required final bool haspasswordChanged}) = _$ForgotPasswordStateImpl;

  @override
  bool get isLoading;
  @override
  String get message;
  @override
  bool get isOtpSendError;
  @override
  bool get isPasswordError;
  @override
  bool get hasOtpSended;
  @override
  bool get haspasswordChanged;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
