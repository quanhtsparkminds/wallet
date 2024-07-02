import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';

bool _isTimeOutDialogShowing = false;
Future<T?> showMessageDialog<T>(BuildContext context,
        {String? title,
        String description = '',
        WidgetBuilder? additionalInformation,
        required List<Widget> listButton,
        bool dismissible = false}) =>
    showCupertinoDialog<T>(
        barrierDismissible: dismissible,
        context: context,
        builder: (context) {
          return WillPopScope(
              child: Theme(
                data: ThemeData.light(),
                child: CupertinoAlertDialog(
                  title: title != null
                      ? TextCustom(
                          title,
                          fontCustom: FontCustom.robotoMedium,
                          textAlign: TextAlign.center,
                        )
                      : Container(),
                  content: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Screen.resizePoint(context, 20)),
                    margin: EdgeInsets.symmetric(
                        vertical: Screen.resizePoint(context, 40)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextCustom(
                          description,
                          fontCustom: FontCustom.robotoRegular,
                          textAlign: TextAlign.center,
                        ),
                        if (additionalInformation != null) ...[
                          const SizedBox(height: 12),
                          additionalInformation.call(context),
                        ],
                      ],
                    ),
                  ),
                  actions: listButton,
                ),
              ),
              onWillPop: () async => false);
        });

void showTimeoutDialogIfNecessary(BuildContext ctx) async {
  if (_isTimeOutDialogShowing == true) {
    return;
  }
  _isTimeOutDialogShowing = true;
  // final context = navigatorKey.currentContext;
  await showMessageDialog(
    ctx,
    title: '',
    description: '',
    listButton: [
      CupertinoDialogAction(
        onPressed: () {
          Navigator.pop(ctx);
        },
        child: const TextCustom(
          'CLose',
          fontCustom: FontCustom.robotoRegular,
        ),
      ),
    ],
  );
  _isTimeOutDialogShowing = false;
}

showMessageDialogLearnEx(BuildContext context,
        {String title = '',
        String description = '',
        Widget? childContent,
        bool isHasChildContent = false,
        required List<Widget> listButton(BuildContext),
        bool dismissible = false}) =>
    showCupertinoDialog(
        barrierDismissible: dismissible,
        context: context,
        builder: (context) {
          return WillPopScope(
              child: Theme(
                data: ThemeData.light(),
                child: CupertinoAlertDialog(
                  title: TextCustom(
                    title,
                    fontCustom: FontCustom.robotoMedium,
                    textAlign: TextAlign.center,
                  ),
                  content: Column(
                    children: <Widget>[
                      if (isHasChildContent)
                        Container(
                          margin: const EdgeInsets.only(top: 50, bottom: 50),
                          child: Center(child: childContent),
                        ),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextCustom(
                            description,
                            fontCustom: FontCustom.robotoRegular,
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  actions: listButton(context),
                ),
              ),
              onWillPop: () async => false);
        });
