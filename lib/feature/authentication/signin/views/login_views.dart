import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:myapp/commands/core/app_string.dart';
import 'package:myapp/feature/authentication/signin/login_cubit/login_cubit.dart';
import 'package:myapp/shared/widgets/app_button/app_button.dart';
import 'package:myapp/shared/widgets/app_sized_box/app_sized_box.dart';
import 'package:myapp/shared/widgets/custom_text_form_field.dart';
import 'package:myapp/validate_builder.dart';
import 'package:timer_count_down/timer_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginCubit _bloc;

  CountdownController countdownController =
      CountdownController(autoStart: true);

  @override
  void initState() {
    _bloc = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state is IsVerifiedOtp) {}
      return SizedBox(
          child: FormBuilder(
        key: _bloc.formKeyLogin,
        child: Column(
          children: [
            AppSizedBox.square24,
            CustomTextFormField(
              labelText: AppString.phoneText,
              controller: _bloc.emailController,
              keyboardType: TextInputType.phone,
              hintText: AppString.placeholderPhone,
              fieldKey: _bloc.formFieldKeys[FormFieldNames.phone]!,
              name: _bloc.formFieldNames[FormFieldNames.phone]!,
              validator: ValidateBuilder().empty().build(),
            ),
            AppSizedBox.square24,
            CustomTextFormField(
              labelText: AppString.passwordText,
              controller: _bloc.passwordController,
              keyboardType: TextInputType.text,
              hintText: AppString.placeholderPassword,
              validator: ValidateBuilder().empty().build(),
              fieldKey: _bloc.formFieldKeys[FormFieldNames.password]!,
              name: _bloc.formFieldNames[FormFieldNames.password]!,
              obscureText: true,
              isObscureIcon: true,
            ),
            AppSizedBox.square24,
            AppButton(
              title: AppString.nextBtn,
              onPressed: () {
                _bloc.loginEmailWithPassword(context);
              },
            ),
            AppSizedBox.square24,
          ],
        ),
      ));
    });
  }
}
