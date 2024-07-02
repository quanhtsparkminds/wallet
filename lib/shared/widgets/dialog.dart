import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:myapp/config/location_config.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/gen/assets.gen.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';
import 'package:permission_handler/permission_handler.dart';

enum DialogAction {
  cancel,
  discard,
  disagree,
  agree,
}

typedef TapButtonListener = Function(DialogAction action);
typedef TapConfirm = Function();

class WaitingDialog {
  BuildContext? context;

  void done() async {
    Navigator.of(context!).pop(true);
  }

  void showWaitingDialog(BuildContext context,
      {String? message, VoidCallback? callBack}) async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          print(context);

          this.context = context;
          return AlertDialog(
              backgroundColor: Colors.white,
              content: Container(
                width: double.infinity,
                height: 100.0,
                alignment: Alignment.center,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.darkModeColor)),
                    Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: TextCustom(
                          message ?? 'Dữ liệu đang được xử lý ...',
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkModeColor),
                        )),
                  ],
                )),
              ));
        });
  }

  Future<dynamic> showProcessDialog(BuildContext context,
      {String? message, required Future<dynamic> callBack}) async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          this.context = context;
          return AlertDialog(
              backgroundColor: Colors.white,
              content: Container(
                width: double.infinity,
                height: 100.0,
                alignment: Alignment.center,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).primaryColor)),
                    Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          message ?? 'Dữ liệu đang được xử lý ...',
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        )),
                  ],
                )),
              ));
        });
    final result = await callBack;
    print('sucesss');
    Navigator.of(context).pop(true);
    return result;
  }
}

Future<bool> showAlertDialog(BuildContext context, String errorMessage,
    {TapConfirm? confirmTap,
    TapConfirm? cancelTap,
    Color? color,
    String? confirmLabel,
    String? confirmTitle,
    String? cancelTitle,
    Widget? child,
    required GlobalKey<NavigatorState> navigatorKey}) async {
  return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Assets.images.alert.image()),
                SizedBox(height: 16.0),
                child ??
                    Text(
                      errorMessage,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
              ],
            ),
            actions: <Widget>[
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        child: Text(cancelTitle ?? 'Hủy',
                            style: TextStyle(
                                color: color ?? AppColors.redorange,
                                fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12.0),
                            elevation: 0,
                            backgroundColor: Colors.white,
                            side: BorderSide(color: color ?? AppColors.black)),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                          if (cancelTap != null) {
                            cancelTap();
                          }
                        }),
                  ),
                ],
              ),
              if (confirmTap != null)
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      child: Text(confirmTitle ?? 'Tiếp tục',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12.0),
                          elevation: 0,
                          backgroundColor: color ?? AppColors.redorange),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        confirmTap();
                      }),
                ),
              SizedBox(height: 16.0),
            ]);
      });
}

void showConfirmDialog(BuildContext context, String errorMessage,
    {TapConfirm? confirmTap,
    required GlobalKey<NavigatorState> navigatorKey,
    Widget? child}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: child ??
              Text(errorMessage, style: const TextStyle(fontSize: 18.0)),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.of(context).pop(true),
            ),
            ElevatedButton(
              child: const Text('Đồng ý',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pop(true);
                if (confirmTap != null) confirmTap();
              },
            ),
          ],
        );
      });
}

Future showAlertWithTitleDialog(
    BuildContext context, String title, String content,
    {String? firstAction,
    TapConfirm? firstTap,
    String? secondAction,
    TapConfirm? secondTap,
    String? thirdAction,
    TapConfirm? thirdTap,
    required GlobalKey<NavigatorState> navigatorKey}) {
  List<Widget> actions = [];
  Color primaryColor = Theme.of(context).primaryColor;

  if (thirdAction != null && thirdAction.isNotEmpty) {
    actions.add(TextButton(
      onPressed: thirdTap ?? () => navigatorKey.currentState?.pop(),
      child: Text(thirdAction, style: TextStyle(color: primaryColor)),
    ));
  }

  if (secondAction != null && secondAction.isNotEmpty) {
    actions.add(TextButton(
      onPressed: secondTap ?? () => navigatorKey.currentState?.pop(),
      child: Text(secondAction, style: TextStyle(color: primaryColor)),
    ));
  }

  actions.add(TextButton(
    onPressed:
        firstTap != null ? firstTap : () => navigatorKey.currentState?.pop(),
    child: Text(firstAction ?? 'Đồng ý', style: TextStyle(color: primaryColor)),
  ));

  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content, style: const TextStyle(fontSize: 18.0)),
          actions: actions,
        );
      });
}

checkPermission(BuildContext context,
    {Function(Position? position)? onSuccess, Function? onClose}) async {
  if (Platform.isAndroid) {
    await LocationConfig1.checkLocationPermission().then((value) async {
      if (value) {
        try {
          Position? position = await LocationConfig1.getLocationPosition();
          onSuccess?.call(position);
        } catch (e) {
          print(e);
        }
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Thông báo'),
              content: const Text(
                'Vui lòng bật dịch vụ định vị.',
              ),
              actions: [
                CupertinoButton(
                  child: const Center(
                    child: Text('Mở cài đặt'),
                  ),
                  onPressed: () {
                    if (Platform.isAndroid) {
                      openAppSettings();
                    } else {
                      openAppSettings();
                    }
                    Navigator.pop(context);
                  },
                ),
                CupertinoButton(
                  child: const Center(
                    child: Text('Đóng'),
                  ),
                  onPressed: () {
                    Navigator.of(context).maybePop();
                    onClose?.call();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }
  if (Platform.isIOS) {
    await LocationConfig1.checkLocationPermission().then((value) async {
      if (value) {
        try {
          Position? position = await LocationConfig1.getLocationPosition();
          onSuccess?.call(position);
        } catch (e) {
          print(e);
        }
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Thông báo'),
              content: Text('Vui lòng bật dịch vụ định vị cho'),
              actions: [
                CupertinoButton(
                  child: const Center(
                    child: Text('Mở cài đặt'),
                  ),
                  onPressed: () {
                    openAppSettings();
                    Navigator.pop(context);
                  },
                ),
                CupertinoButton(
                  child: const Center(
                    child: Text('Đóng'),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    onClose?.call();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }
}
