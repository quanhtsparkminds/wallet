import 'package:myapp/commands/api_client/api_config.dart';
import 'package:myapp/commands/api_client/api_helper.dart';
import 'package:myapp/config/sprefs_core.dart';
import 'package:myapp/constants/app_key.dart';
import 'package:myapp/domain/model/auth_model/user_token.dart';
import 'package:myapp/shared/utils/my_logger.dart';

class AuthRepository with ApiHelper<AuthToken> {
  Future<AuthToken?> loginBusiness(
      {required String email, required String password}) async {
    final queryParameters = {
      'email': email,
      'password': password,
    };
    try {
      final result = await postRequest(
          apiURL: ApiConfig.login,
          data: queryParameters,
          getJsonCallback: AuthToken.fromJson);
      if (result.accessToken != null) {
        await SPrefCore.prefs
            .setString(AppKey.xToken, result.accessToken ?? '');
        return result;
      } else {
        MyLogger.d('------- Login ------ : $result');
      }
      return result;
    } catch (e) {
      return null;
    }
  }
}
