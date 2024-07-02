// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState() = _$LoginStateImpl;
}

/// @nodoc
abstract class _$$ProcessingStateImplCopyWith<$Res> {
  factory _$$ProcessingStateImplCopyWith(_$ProcessingStateImpl value,
          $Res Function(_$ProcessingStateImpl) then) =
      __$$ProcessingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(
      _$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingStateImpl implements ProcessingState {
  const _$ProcessingStateImpl();

  @override
  String toString() {
    return 'LoginState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingState implements LoginState {
  const factory ProcessingState() = _$ProcessingStateImpl;
}

/// @nodoc
abstract class _$$LoginFailStateImplCopyWith<$Res> {
  factory _$$LoginFailStateImplCopyWith(_$LoginFailStateImpl value,
          $Res Function(_$LoginFailStateImpl) then) =
      __$$LoginFailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailStateImpl>
    implements _$$LoginFailStateImplCopyWith<$Res> {
  __$$LoginFailStateImplCopyWithImpl(
      _$LoginFailStateImpl _value, $Res Function(_$LoginFailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginFailStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailStateImpl implements LoginFailState {
  const _$LoginFailStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loginFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailStateImplCopyWith<_$LoginFailStateImpl> get copyWith =>
      __$$LoginFailStateImplCopyWithImpl<_$LoginFailStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return loginFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return loginFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class LoginFailState implements LoginState {
  const factory LoginFailState({required final String message}) =
      _$LoginFailStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginFailStateImplCopyWith<_$LoginFailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<$Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl value,
          $Res Function(_$LoginSuccessStateImpl) then) =
      __$$LoginSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessStateImpl>
    implements _$$LoginSuccessStateImplCopyWith<$Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl _value,
      $Res Function(_$LoginSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccessStateImpl implements LoginSuccessState {
  const _$LoginSuccessStateImpl();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState implements LoginState {
  const factory LoginSuccessState() = _$LoginSuccessStateImpl;
}

/// @nodoc
abstract class _$$IsVerifiedOtpImplCopyWith<$Res> {
  factory _$$IsVerifiedOtpImplCopyWith(
          _$IsVerifiedOtpImpl value, $Res Function(_$IsVerifiedOtpImpl) then) =
      __$$IsVerifiedOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsVerifiedOtpImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$IsVerifiedOtpImpl>
    implements _$$IsVerifiedOtpImplCopyWith<$Res> {
  __$$IsVerifiedOtpImplCopyWithImpl(
      _$IsVerifiedOtpImpl _value, $Res Function(_$IsVerifiedOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsVerifiedOtpImpl implements IsVerifiedOtp {
  const _$IsVerifiedOtpImpl();

  @override
  String toString() {
    return 'LoginState.isVerifiedOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsVerifiedOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return isVerifiedOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return isVerifiedOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (isVerifiedOtp != null) {
      return isVerifiedOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return isVerifiedOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return isVerifiedOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (isVerifiedOtp != null) {
      return isVerifiedOtp(this);
    }
    return orElse();
  }
}

abstract class IsVerifiedOtp implements LoginState {
  const factory IsVerifiedOtp() = _$IsVerifiedOtpImpl;
}

/// @nodoc
abstract class _$$ResetPasswordFailStateImplCopyWith<$Res> {
  factory _$$ResetPasswordFailStateImplCopyWith(
          _$ResetPasswordFailStateImpl value,
          $Res Function(_$ResetPasswordFailStateImpl) then) =
      __$$ResetPasswordFailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResetPasswordFailStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ResetPasswordFailStateImpl>
    implements _$$ResetPasswordFailStateImplCopyWith<$Res> {
  __$$ResetPasswordFailStateImplCopyWithImpl(
      _$ResetPasswordFailStateImpl _value,
      $Res Function(_$ResetPasswordFailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ResetPasswordFailStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordFailStateImpl implements ResetPasswordFailState {
  const _$ResetPasswordFailStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.resetPassFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordFailStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordFailStateImplCopyWith<_$ResetPasswordFailStateImpl>
      get copyWith => __$$ResetPasswordFailStateImplCopyWithImpl<
          _$ResetPasswordFailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return resetPassFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return resetPassFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (resetPassFailed != null) {
      return resetPassFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return resetPassFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return resetPassFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (resetPassFailed != null) {
      return resetPassFailed(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordFailState implements LoginState {
  const factory ResetPasswordFailState({required final String message}) =
      _$ResetPasswordFailStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ResetPasswordFailStateImplCopyWith<_$ResetPasswordFailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordSuccessStateImplCopyWith<$Res> {
  factory _$$ResetPasswordSuccessStateImplCopyWith(
          _$ResetPasswordSuccessStateImpl value,
          $Res Function(_$ResetPasswordSuccessStateImpl) then) =
      __$$ResetPasswordSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ResetPasswordSuccessStateImpl>
    implements _$$ResetPasswordSuccessStateImplCopyWith<$Res> {
  __$$ResetPasswordSuccessStateImplCopyWithImpl(
      _$ResetPasswordSuccessStateImpl _value,
      $Res Function(_$ResetPasswordSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetPasswordSuccessStateImpl implements ResetPasswordSuccessState {
  const _$ResetPasswordSuccessStateImpl();

  @override
  String toString() {
    return 'LoginState.resetPassSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return resetPassSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return resetPassSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (resetPassSuccess != null) {
      return resetPassSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return resetPassSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return resetPassSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (resetPassSuccess != null) {
      return resetPassSuccess(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessState implements LoginState {
  const factory ResetPasswordSuccessState() = _$ResetPasswordSuccessStateImpl;
}

/// @nodoc
abstract class _$$SendOtpSuccessStateImplCopyWith<$Res> {
  factory _$$SendOtpSuccessStateImplCopyWith(_$SendOtpSuccessStateImpl value,
          $Res Function(_$SendOtpSuccessStateImpl) then) =
      __$$SendOtpSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SendOtpSuccessStateImpl>
    implements _$$SendOtpSuccessStateImplCopyWith<$Res> {
  __$$SendOtpSuccessStateImplCopyWithImpl(_$SendOtpSuccessStateImpl _value,
      $Res Function(_$SendOtpSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendOtpSuccessStateImpl implements SendOtpSuccessState {
  const _$SendOtpSuccessStateImpl();

  @override
  String toString() {
    return 'LoginState.sendOtpSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return sendOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return sendOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (sendOtpSuccess != null) {
      return sendOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return sendOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return sendOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (sendOtpSuccess != null) {
      return sendOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class SendOtpSuccessState implements LoginState {
  const factory SendOtpSuccessState() = _$SendOtpSuccessStateImpl;
}

/// @nodoc
abstract class _$$ReSendOtpSuccessStateImplCopyWith<$Res> {
  factory _$$ReSendOtpSuccessStateImplCopyWith(
          _$ReSendOtpSuccessStateImpl value,
          $Res Function(_$ReSendOtpSuccessStateImpl) then) =
      __$$ReSendOtpSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReSendOtpSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ReSendOtpSuccessStateImpl>
    implements _$$ReSendOtpSuccessStateImplCopyWith<$Res> {
  __$$ReSendOtpSuccessStateImplCopyWithImpl(_$ReSendOtpSuccessStateImpl _value,
      $Res Function(_$ReSendOtpSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReSendOtpSuccessStateImpl implements ReSendOtpSuccessState {
  const _$ReSendOtpSuccessStateImpl();

  @override
  String toString() {
    return 'LoginState.reSendOtpSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReSendOtpSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return reSendOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return reSendOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (reSendOtpSuccess != null) {
      return reSendOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return reSendOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return reSendOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (reSendOtpSuccess != null) {
      return reSendOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class ReSendOtpSuccessState implements LoginState {
  const factory ReSendOtpSuccessState() = _$ReSendOtpSuccessStateImpl;
}

/// @nodoc
abstract class _$$SendOtpFailStateImplCopyWith<$Res> {
  factory _$$SendOtpFailStateImplCopyWith(_$SendOtpFailStateImpl value,
          $Res Function(_$SendOtpFailStateImpl) then) =
      __$$SendOtpFailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendOtpFailStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SendOtpFailStateImpl>
    implements _$$SendOtpFailStateImplCopyWith<$Res> {
  __$$SendOtpFailStateImplCopyWithImpl(_$SendOtpFailStateImpl _value,
      $Res Function(_$SendOtpFailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendOtpFailStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpFailStateImpl implements SendOtpFailState {
  const _$SendOtpFailStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.sendOtpFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpFailStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpFailStateImplCopyWith<_$SendOtpFailStateImpl> get copyWith =>
      __$$SendOtpFailStateImplCopyWithImpl<_$SendOtpFailStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return sendOtpFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return sendOtpFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (sendOtpFailed != null) {
      return sendOtpFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return sendOtpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return sendOtpFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (sendOtpFailed != null) {
      return sendOtpFailed(this);
    }
    return orElse();
  }
}

abstract class SendOtpFailState implements LoginState {
  const factory SendOtpFailState({required final String message}) =
      _$SendOtpFailStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SendOtpFailStateImplCopyWith<_$SendOtpFailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeutralStateImplCopyWith<$Res> {
  factory _$$NeutralStateImplCopyWith(
          _$NeutralStateImpl value, $Res Function(_$NeutralStateImpl) then) =
      __$$NeutralStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NeutralStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$NeutralStateImpl>
    implements _$$NeutralStateImplCopyWith<$Res> {
  __$$NeutralStateImplCopyWithImpl(
      _$NeutralStateImpl _value, $Res Function(_$NeutralStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NeutralStateImpl implements NeutralState {
  const _$NeutralStateImpl();

  @override
  String toString() {
    return 'LoginState.neutral()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NeutralStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(String message) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() isVerifiedOtp,
    required TResult Function(String message) resetPassFailed,
    required TResult Function() resetPassSuccess,
    required TResult Function() sendOtpSuccess,
    required TResult Function() reSendOtpSuccess,
    required TResult Function(String message) sendOtpFailed,
    required TResult Function() neutral,
  }) {
    return neutral();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(String message)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? isVerifiedOtp,
    TResult? Function(String message)? resetPassFailed,
    TResult? Function()? resetPassSuccess,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? reSendOtpSuccess,
    TResult? Function(String message)? sendOtpFailed,
    TResult? Function()? neutral,
  }) {
    return neutral?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(String message)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? isVerifiedOtp,
    TResult Function(String message)? resetPassFailed,
    TResult Function()? resetPassSuccess,
    TResult Function()? sendOtpSuccess,
    TResult Function()? reSendOtpSuccess,
    TResult Function(String message)? sendOtpFailed,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (neutral != null) {
      return neutral();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
    required TResult Function(ProcessingState value) processing,
    required TResult Function(LoginFailState value) loginFailed,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(IsVerifiedOtp value) isVerifiedOtp,
    required TResult Function(ResetPasswordFailState value) resetPassFailed,
    required TResult Function(ResetPasswordSuccessState value) resetPassSuccess,
    required TResult Function(SendOtpSuccessState value) sendOtpSuccess,
    required TResult Function(ReSendOtpSuccessState value) reSendOtpSuccess,
    required TResult Function(SendOtpFailState value) sendOtpFailed,
    required TResult Function(NeutralState value) neutral,
  }) {
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
    TResult? Function(ProcessingState value)? processing,
    TResult? Function(LoginFailState value)? loginFailed,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult? Function(ResetPasswordFailState value)? resetPassFailed,
    TResult? Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult? Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult? Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult? Function(SendOtpFailState value)? sendOtpFailed,
    TResult? Function(NeutralState value)? neutral,
  }) {
    return neutral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    TResult Function(ProcessingState value)? processing,
    TResult Function(LoginFailState value)? loginFailed,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(IsVerifiedOtp value)? isVerifiedOtp,
    TResult Function(ResetPasswordFailState value)? resetPassFailed,
    TResult Function(ResetPasswordSuccessState value)? resetPassSuccess,
    TResult Function(SendOtpSuccessState value)? sendOtpSuccess,
    TResult Function(ReSendOtpSuccessState value)? reSendOtpSuccess,
    TResult Function(SendOtpFailState value)? sendOtpFailed,
    TResult Function(NeutralState value)? neutral,
    required TResult orElse(),
  }) {
    if (neutral != null) {
      return neutral(this);
    }
    return orElse();
  }
}

abstract class NeutralState implements LoginState {
  const factory NeutralState() = _$NeutralStateImpl;
}
