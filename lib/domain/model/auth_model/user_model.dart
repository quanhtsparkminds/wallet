import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {String? email,
      String? password,
      bool? isActive,
      String? address,
      String? avatar,
      String? name,
      String? role}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

class AuthModelField {
  String? name;
  String? password;
  String? email;
  String? phone;
  String? avatar;
  String? address;
  DateTime? registerDate;
  DateTime? updatedAt;
  DateTime? createdAt;
}
