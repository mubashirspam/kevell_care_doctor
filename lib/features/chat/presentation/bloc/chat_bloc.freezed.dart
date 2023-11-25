// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  String get id => throw _privateConstructorUsedError;
  bool get isReloading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool isReloading) fetchChatProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool isReloading)? fetchChatProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool isReloading)? fetchChatProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatProfile value) fetchChatProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatProfile value)? fetchChatProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatProfile value)? fetchChatProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String id, bool isReloading});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isReloading = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isReloading: null == isReloading
          ? _value.isReloading
          : isReloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchChatProfileImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$FetchChatProfileImplCopyWith(_$FetchChatProfileImpl value,
          $Res Function(_$FetchChatProfileImpl) then) =
      __$$FetchChatProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isReloading});
}

/// @nodoc
class __$$FetchChatProfileImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchChatProfileImpl>
    implements _$$FetchChatProfileImplCopyWith<$Res> {
  __$$FetchChatProfileImplCopyWithImpl(_$FetchChatProfileImpl _value,
      $Res Function(_$FetchChatProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isReloading = null,
  }) {
    return _then(_$FetchChatProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isReloading: null == isReloading
          ? _value.isReloading
          : isReloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchChatProfileImpl implements _FetchChatProfile {
  const _$FetchChatProfileImpl({required this.id, required this.isReloading});

  @override
  final String id;
  @override
  final bool isReloading;

  @override
  String toString() {
    return 'ChatEvent.fetchChatProfile(id: $id, isReloading: $isReloading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchChatProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isReloading, isReloading) ||
                other.isReloading == isReloading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isReloading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchChatProfileImplCopyWith<_$FetchChatProfileImpl> get copyWith =>
      __$$FetchChatProfileImplCopyWithImpl<_$FetchChatProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool isReloading) fetchChatProfile,
  }) {
    return fetchChatProfile(id, isReloading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool isReloading)? fetchChatProfile,
  }) {
    return fetchChatProfile?.call(id, isReloading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool isReloading)? fetchChatProfile,
    required TResult orElse(),
  }) {
    if (fetchChatProfile != null) {
      return fetchChatProfile(id, isReloading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatProfile value) fetchChatProfile,
  }) {
    return fetchChatProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatProfile value)? fetchChatProfile,
  }) {
    return fetchChatProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatProfile value)? fetchChatProfile,
    required TResult orElse(),
  }) {
    if (fetchChatProfile != null) {
      return fetchChatProfile(this);
    }
    return orElse();
  }
}

abstract class _FetchChatProfile implements ChatEvent {
  const factory _FetchChatProfile(
      {required final String id,
      required final bool isReloading}) = _$FetchChatProfileImpl;

  @override
  String get id;
  @override
  bool get isReloading;
  @override
  @JsonKey(ignore: true)
  _$$FetchChatProfileImplCopyWith<_$FetchChatProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  ChatProfileModel? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool hasData,
      ChatProfileModel? result});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isError = null,
    Object? hasData = null,
    Object? result = freezed,
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
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ChatProfileModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool hasData,
      ChatProfileModel? result});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isError = null,
    Object? hasData = null,
    Object? result = freezed,
  }) {
    return _then(_$ChatStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ChatProfileModel?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required this.isLoading,
      required this.message,
      required this.isError,
      required this.hasData,
      required this.result});

  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool isError;
  @override
  final bool hasData;
  @override
  final ChatProfileModel? result;

  @override
  String toString() {
    return 'ChatState(isLoading: $isLoading, message: $message, isError: $isError, hasData: $hasData, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, message, isError, hasData, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final bool isLoading,
      required final String message,
      required final bool isError,
      required final bool hasData,
      required final ChatProfileModel? result}) = _$ChatStateImpl;

  @override
  bool get isLoading;
  @override
  String get message;
  @override
  bool get isError;
  @override
  bool get hasData;
  @override
  ChatProfileModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
