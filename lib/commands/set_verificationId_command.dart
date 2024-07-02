import 'base_command.dart';


class SetVerificationIdCommand extends BaseAppCommand {
  Future<void> run(String? verificationId) async {
    mainLoginState.verificationId = verificationId;
  }
}
