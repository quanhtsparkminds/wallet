import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/commands/navigate_to_command.dart';
import 'package:myapp/commands/set_current_user_command.dart';
import 'package:myapp/constants/app_role.dart';
import 'package:myapp/domain/repositories/auth_repo.dart';
import 'package:myapp/domain/repositories/user_repo.dart';
import 'package:myapp/routing/page_configuration/dashboard_page_configuration.dart';
import 'package:myapp/shared/helps/storage_hepler.dart';
import 'package:myapp/shared/utils/my_logger.dart';
import 'package:myapp/shared/widgets/dialog.dart';
import 'package:rxdart/rxdart.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

enum FormFieldNames { phone, password }

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());
  bool isLoading = false;
  bool reSend = false;
  String? currenPhone;

  late String smsVerifyCode = '';
  late String tokenFB;
  late String currPhone;
  // ignore: close_sinks
  final _countdownStart$ = BehaviorSubject<bool>();
  Stream<bool> get countdownStartStream => _countdownStart$.stream;
  Sink<bool> get countdownStartSink => _countdownStart$.sink;
  bool? get countdownStartValue => _countdownStart$.value;
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;
  final AuthRepository authRepo = AuthRepository();
  final UserRepository memberGetMe = UserRepository();

  final GlobalKey<FormBuilderState> formKeyLogin =
      GlobalKey<FormBuilderState>();

  final Map<FormFieldNames, String> formFieldNames = {
    FormFieldNames.phone: 'phone',
    FormFieldNames.password: 'password',
  };
  late Map<FormFieldNames, GlobalKey<FormBuilderFieldState>> formFieldKeys =
      formFieldNames.map(
    (key, value) => MapEntry(key, GlobalKey<FormBuilderFieldState>()),
  );

  Future<void> login(String phone, BuildContext ctx) async {
    WaitingDialog waitingDialog = WaitingDialog();
    waitingDialog.showWaitingDialog(ctx);
    startProcess();
    try {
      final String phoneNumber = '+84${phone.toString().substring(1, 10)}';
      currenPhone = phoneNumber;
    } catch (e) {
      waitingDialog.done();
      failLogin(e.toString());
    }
  }

  Future submitOtp(String otp, BuildContext context) async {
    WaitingDialog waitingDialog = WaitingDialog();
    try {} finally {
      isLoading = false;
      waitingDialog.done();
    }
  }

  Future<void> loginEmailWithPassword(BuildContext context) async {
    bool valid = formKeyLogin.currentState?.saveAndValidate() ?? false;
    if (!valid) {
      NavigateToCommand().run(DashBoardPageConfiguration());
      return;
    }
    // WaitingDialog waitingDialog = WaitingDialog();
    // waitingDialog.showWaitingDialog(context);
    String email = _emailController.text;
    String password = _passwordController.text;
    try {
      // final result =
      //     await authRepo.loginBusiness(email: email, password: password);
      // if (result!.accessToken != null) {
      //   await accessTokenChange(result.accessToken);
      //   // await SPref.instance.set(AppKey.xToken, result.accessToken!);
      //   // await getCurrentUser();
      //   successLogin();
      // } else {}
      // waitingDialog.done();
      NavigateToCommand().run(DashBoardPageConfiguration());
    } catch (e) {
      MyLogger.d('----- $e');
    } finally {
      endLoading();
      // waitingDialog.done();
    }
  }

  accessTokenChange(String? accessToken) async {
    if (accessToken == null || accessToken.isEmpty) {
      await SecureStorageHelper().removeAccessToken();
    } else {
      await SecureStorageHelper().setAccessToken(accessToken);
    }
  }

  Future<void> getCurrentUser() async {
    try {
      final result = await memberGetMe.authGetMe();
      SetCurrentUserCommand().run(result?.data);
      AppRole.setRole(result?.data.role ?? 'customer');
    } catch (e) {
      MyLogger.d('----- $e');
    } finally {
      endLoading();
    }
  }

  startProcess() {
    isLoading = true;
    emit(const LoginState.processing());
  }

  sendOtpFailed(String message) {
    isLoading = false;
    emit(LoginState.sendOtpFailed(message: message));
  }

  failLogin(String message) {
    isLoading = false;
    emit(LoginState.loginFailed(message: message));
  }

  checkVerifiedOTP() {
    isLoading = false;
    reSend = true;
    emit(const LoginState.isVerifiedOtp());
  }

  successLogin() async {
    isLoading = false;
    emit(const LoginState.loginSuccess());
  }

  endLoading() {}
}
