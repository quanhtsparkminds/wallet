import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/commands/core/app_style.dart';
import 'package:myapp/model/main_app_state.dart';
import 'package:myapp/model/main_login_model.dart';
import 'package:myapp/model/network_connection_model.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';
import 'package:myapp/themes.dart';
import 'package:provider/provider.dart';

FToast? _fToast;
BuildContext? _mainContext;
BuildContext? get mainContext => _mainContext;

/// Someone needs to call this so our Commands can access models and services. Usually main_view.dart
void setContext(BuildContext c) {
  _mainContext = c;
  if (_fToast == null) {
    _fToast = FToast();
    _fToast!.init(_mainContext!);
  }
}

class BaseAppCommand {
  /// Provide quick lookups for the main Models and Services in the App.
  T getProvided<T>() {
    assert(_mainContext != null,
        'You must call AbstractCommand.init(BuildContext) method before calling Commands.');
    return _mainContext!.read<T>();
  }

  AppTheme get appTheme => getProvided();
  MainAppState get mainAppState => getProvided();
  MainLoginState get mainLoginState => getProvided();
  NetworkState get networkState => getProvided();
  void showToast(String content, {bool allowQueue = false}) {
    // TextStyle textStyle =
    //     TextStyles.caption.copyWith(color: mainAppState.theme.);
    if (allowQueue == false) _fToast?.removeQueuedCustomToasts();
    _fToast?.showToast(
      toastDuration: const Duration(milliseconds: 1500),
      gravity: ToastGravity.TOP,
      child: Container(
          padding: EdgeInsets.only(top: Insets.offset),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.grey6Light,
              borderRadius: Corners.medBorder,
            ),
            padding: EdgeInsets.all(Insets.sm),
            child: TextCustom(content),
          )),
    );
  }
}
