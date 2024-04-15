// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  BlocStatus get signUpStatus => throw _privateConstructorUsedError;
  BlocStatus get signInStatus => throw _privateConstructorUsedError;
  BlocStatus get sendCodeStatus => throw _privateConstructorUsedError;
  SmsCodeResponseModel? get smsCodeResponseModel =>
      throw _privateConstructorUsedError;
  LoginResponseModel? get loginResponseModel =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {BlocStatus signUpStatus,
      BlocStatus signInStatus,
      BlocStatus sendCodeStatus,
      SmsCodeResponseModel? smsCodeResponseModel,
      LoginResponseModel? loginResponseModel,
      String? message});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpStatus = null,
    Object? signInStatus = null,
    Object? sendCodeStatus = null,
    Object? smsCodeResponseModel = freezed,
    Object? loginResponseModel = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      signUpStatus: null == signUpStatus
          ? _value.signUpStatus
          : signUpStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      signInStatus: null == signInStatus
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      sendCodeStatus: null == sendCodeStatus
          ? _value.sendCodeStatus
          : sendCodeStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      smsCodeResponseModel: freezed == smsCodeResponseModel
          ? _value.smsCodeResponseModel
          : smsCodeResponseModel // ignore: cast_nullable_to_non_nullable
              as SmsCodeResponseModel?,
      loginResponseModel: freezed == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus signUpStatus,
      BlocStatus signInStatus,
      BlocStatus sendCodeStatus,
      SmsCodeResponseModel? smsCodeResponseModel,
      LoginResponseModel? loginResponseModel,
      String? message});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpStatus = null,
    Object? signInStatus = null,
    Object? sendCodeStatus = null,
    Object? smsCodeResponseModel = freezed,
    Object? loginResponseModel = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AuthStateImpl(
      signUpStatus: null == signUpStatus
          ? _value.signUpStatus
          : signUpStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      signInStatus: null == signInStatus
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      sendCodeStatus: null == sendCodeStatus
          ? _value.sendCodeStatus
          : sendCodeStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      smsCodeResponseModel: freezed == smsCodeResponseModel
          ? _value.smsCodeResponseModel
          : smsCodeResponseModel // ignore: cast_nullable_to_non_nullable
              as SmsCodeResponseModel?,
      loginResponseModel: freezed == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {this.signUpStatus = BlocStatus.notInitialized,
      this.signInStatus = BlocStatus.notInitialized,
      this.sendCodeStatus = BlocStatus.notInitialized,
      this.smsCodeResponseModel,
      this.loginResponseModel,
      this.message})
      : super._();

  @override
  @JsonKey()
  final BlocStatus signUpStatus;
  @override
  @JsonKey()
  final BlocStatus signInStatus;
  @override
  @JsonKey()
  final BlocStatus sendCodeStatus;
  @override
  final SmsCodeResponseModel? smsCodeResponseModel;
  @override
  final LoginResponseModel? loginResponseModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState(signUpStatus: $signUpStatus, signInStatus: $signInStatus, sendCodeStatus: $sendCodeStatus, smsCodeResponseModel: $smsCodeResponseModel, loginResponseModel: $loginResponseModel, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.signUpStatus, signUpStatus) ||
                other.signUpStatus == signUpStatus) &&
            (identical(other.signInStatus, signInStatus) ||
                other.signInStatus == signInStatus) &&
            (identical(other.sendCodeStatus, sendCodeStatus) ||
                other.sendCodeStatus == sendCodeStatus) &&
            (identical(other.smsCodeResponseModel, smsCodeResponseModel) ||
                other.smsCodeResponseModel == smsCodeResponseModel) &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpStatus, signInStatus,
      sendCodeStatus, smsCodeResponseModel, loginResponseModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final BlocStatus signUpStatus,
      final BlocStatus signInStatus,
      final BlocStatus sendCodeStatus,
      final SmsCodeResponseModel? smsCodeResponseModel,
      final LoginResponseModel? loginResponseModel,
      final String? message}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  BlocStatus get signUpStatus;
  @override
  BlocStatus get signInStatus;
  @override
  BlocStatus get sendCodeStatus;
  @override
  SmsCodeResponseModel? get smsCodeResponseModel;
  @override
  LoginResponseModel? get loginResponseModel;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
