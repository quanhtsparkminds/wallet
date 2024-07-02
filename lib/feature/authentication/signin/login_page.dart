import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_string.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/feature/authentication/signin/views/login_views.dart';
import 'package:myapp/gen/assets.gen.dart';
import 'package:myapp/shared/utils/validator/validator.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/shared/widgets/appbar_custom.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';
import 'package:myapp/shared/widgets/padding.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  bool checkEmptyOfFileds() =>
      Validator.isPhoneNumber(_phoneController.text) ? true : false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(Screen.resizeFitDevice(context, 0)),
            child: appBarCustom(
              context,
              leadingPress: () {},
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: getScreenPadding(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? SizedBox(
                          width: Screen.resizeFitDevice(context, 350),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Assets.images.logoWithTextDark
                                .image(fit: BoxFit.cover),
                          ))
                      : Container(),
                  Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: TextCustom(
                        AppString.loginText.toUpperCase(),
                        fontCustom: FontCustom.robotoRegular,
                        textAlign: TextAlign.center,
                        variant: AppTextVariant.bigger,
                      )),
                  const LoginView(),
                ],
              ),
            ),
          )),
    );
  }
}
