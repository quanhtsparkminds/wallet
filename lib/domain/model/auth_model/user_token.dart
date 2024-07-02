import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

part 'user_token.freezed.dart';
part 'user_token.g.dart';

@freezed
class UserToken with _$UserToken {
  const factory UserToken({UserModel? user, String? token}) = _UserToken;

  factory UserToken.fromJson(Map<String, dynamic> json) =>
      _$UserTokenFromJson(json);

  static fromJson2(Map<String, dynamic> json) {
    UserToken(token: json['token']);
  }
}

class AuthToken {
  String? accessToken;
  String? refreshToken;

  AuthToken({
    this.accessToken,
    this.refreshToken,
  });

  factory AuthToken.fromJson(Map<String, dynamic> json) => AuthToken(
      accessToken: json['access_token'], refreshToken: json['refresh_token']);

  Map<String, dynamic> toJson() =>
      {'access_token': accessToken, 'refresh_token': refreshToken};
}
