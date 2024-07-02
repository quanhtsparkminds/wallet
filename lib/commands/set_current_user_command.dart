import 'dart:convert';

import 'package:myapp/domain/model/auth_model/user_model.dart';

import 'base_command.dart';

class SetCurrentUserCommand extends BaseAppCommand {
  Future<void> run(UserModel? userModel) async {
    mainAppState.currentUser = userModel;
    print(
        'setted user_________________${jsonEncode(mainAppState.currentUser)}');
  }

  UserModel? getCurrentUser() {
    return mainAppState.currentUser ?? const UserModel();
  }
}
