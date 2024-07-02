part of 'login_cubit.dart';


@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginState;

  const factory LoginState.processing() = ProcessingState;

  const factory LoginState.loginFailed({required String message}) =
      LoginFailState;

  const factory LoginState.loginSuccess() = LoginSuccessState;

  const factory LoginState.isVerifiedOtp() = IsVerifiedOtp;

  const factory LoginState.resetPassFailed({required String message}) =
      ResetPasswordFailState;

  const factory LoginState.resetPassSuccess() = ResetPasswordSuccessState;

  const factory LoginState.sendOtpSuccess() = SendOtpSuccessState;

  const factory LoginState.reSendOtpSuccess() = ReSendOtpSuccessState;

  const factory LoginState.sendOtpFailed({required String message}) =
      SendOtpFailState;

  const factory LoginState.neutral() = NeutralState;
}
