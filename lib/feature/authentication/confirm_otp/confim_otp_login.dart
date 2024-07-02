import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/commands/core/app_string.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/feature/authentication/signin/login_cubit/login_cubit.dart';
import 'package:myapp/feature/authentication/signin/views/timer_count_down_otp.dart';
import 'package:myapp/shared/utils/validator/validator.dart';
import 'package:myapp/shared/widgets/widget_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import 'package:timer_count_down/timer_controller.dart';
// import 'package:timer_count_down/timer_controller.dart';

class ConfirmOptScreen extends StatefulWidget {
  final LoginCubit bloc;
  final String phone;
  final CountdownController countdownController;
  const ConfirmOptScreen(this.bloc, this.phone,
      {super.key, required this.countdownController});
  @override
  State<ConfirmOptScreen> createState() => _ConfirmOptScreenState();
}

class _ConfirmOptScreenState extends State<ConfirmOptScreen> {
  late LoginCubit bloc;
  final GlobalKey<FormState> _formOtpKey = GlobalKey<FormState>();
  final OtpFieldController _otpController = OtpFieldController();
  var txt = TextEditingController()..text = '';
  var txt2 = TextEditingController()..text = '';
  var txt3 = TextEditingController()..text = '';
  bool checkOtp = false;
  bool? _btnCanSubmit = false;
  int timeCount = 60;
  late String _otpCode;
  bool checklengthOtpCode() {
    if (Validator.isOtpCode(_otpCode) && _otpCode != '') return true;
    return false;
  }

  void validateBtn(String val) {
    if (val.length != 6) {
      setState(() {
        _btnCanSubmit = false;
      });
      return;
    }
    if (checklengthOtpCode()) {
      setState(() {
        _btnCanSubmit = true;
      });
    } else {
      setState(() {
        _btnCanSubmit = false;
      });
    }
  }

  @override
  void initState() {
    bloc = context.read();
    super.initState();
  }

  Widget textInput(
    BuildContext context, {
    TextEditingController? controller,
    int? positionTextField,
  }) =>
      SizedBox(
        height: Screen.resizeFitDevice(context, 78),
        width: Screen.resizeFitDevice(context, 78),
        child: Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: TextField(
            onChanged: (String _txt) {},
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
            cursorColor: AppColors.black,
            controller: controller,
            autofocus: false,
            maxLength: 4,
            style: TextStyle(
                fontSize: Screen.resizeFitDevice(context, 28),
                color: AppColors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto-Regular'),
            decoration: InputDecoration(
              counterText: '',
              filled: true,
              fillColor: AppColors.white,
              contentPadding:
                  EdgeInsets.all(Screen.resizeFitDevice(context, 30)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
                borderRadius:
                    BorderRadius.circular(Screen.resizeFitDevice(context, 10)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.grey,
                    width: Screen.resizeFitDevice(context, 1)),
                borderRadius:
                    BorderRadius.circular(Screen.resizeFitDevice(context, 10)),
              ),
            ),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formOtpKey,
      child: Container(
        height: Screen.resizeFitDevice(context, 600),
        alignment: Alignment.topCenter,
        child: Column(children: [
          const SizedBox(height: 20),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: Screen.resizeFitDevice(context, 30),
          //       right: Screen.resizeFitDevice(context, 30),
          //       top: Screen.resizeFitDevice(context, 20)),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       textInput(context,
          //           controller: txt, positionTextField: 1),
          //       textInput(context,
          //           controller: txt2, positionTextField: 2),
          //       textInput(context,
          //           controller: txt3, positionTextField: 3),
          //       textInput(context,
          //           controller: txt, positionTextField: 1),
          //       textInput(context,
          //           controller: txt2, positionTextField: 2),
          //       textInput(context,
          //           controller: txt3, positionTextField: 3),
          //     ],
          //   ),
          // ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Xác minh số điện thoại',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Mã xác minh để thay đổi mật khẩu đã được gửi bằng tin nhắn đến',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4D4D4D)),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Text(
              '+84${widget.phone.substring(1)}',
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4D4D4D)),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: OTPTextField(
              inputFormatter: [FilteringTextInputFormatter.digitsOnly],
              controller: _otpController,
              length: 6,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 46,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 5,
              style: const TextStyle(fontSize: 16),
              onChanged: (val) {
                validateBtn(val);
              },
              onCompleted: (pin) {
                setState(() {
                  _otpCode = pin;
                });
                print('otpCode$_otpCode');
              },
            ),
          ),
          const SizedBox(height: 20),
          otpCountDown(bloc, widget.countdownController),
          const SizedBox(height: 10),
          AppBtn(
            text: AppString.nextBtn,
            callback: () async {
              await bloc.submitOtp(_otpCode, context);
            },
          ),
          const SizedBox(height: 10),
          Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: AppString.notRecivedCode,
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                  text: AppString.resendCode,
                  style: const TextStyle(color: AppColors.redorange),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ]))),
        ]),
      ),
    );
  }
}
