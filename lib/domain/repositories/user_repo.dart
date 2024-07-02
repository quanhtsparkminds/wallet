// import 'dart:convert';

// import 'package:dio/dio.dart';
import 'package:myapp/commands/api_client/api_config.dart';
import 'package:myapp/commands/api_client/api_helper.dart';
import 'package:myapp/config/sprefs_core.dart';
import 'package:myapp/constants/app_key.dart';
import 'package:myapp/domain/model/auth_model/user_model.dart';
import 'package:myapp/domain/repositories/auth_repo.dart';
// import 'package:myapp/di.dart';

class UserRepository with ApiHelper<ResponseModel> {
  late AuthRepository authRepo;
  UserModel? _currentUser;
  UserModel? get currentUser => _currentUser;

  Future<ResponseModel?> authGetMe() async {
    try {
      final result = await getRequest(
          apiURL: ApiConfig.profile,
          getJsonCallback: (map) {
            return ResponseModel.fromJson(map, fromJsonT: UserModel.fromJson);
          });
      _currentUser = result.data;
      return result;
    } catch (e) {
      rethrow;
    }
  }

  bool _isCurrentUser = false;
  bool get isCurrentUser => _isCurrentUser;

  getIsCurrentUser() async {
    if (SPrefCore.prefs.getString(AppKey.xToken) != null) {
      _isCurrentUser = true;
    } else {
      _isCurrentUser = false;
    }
  }
}
