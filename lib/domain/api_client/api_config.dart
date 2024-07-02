import 'package:myapp/commands/core/app_key.dart';

class ApiConfig {
  ApiConfig._();

  // static const String baseUrl = "https://gorest.co.in/public/v2";
  // baseUrl is IP inrernet
  // static const String baseUrl = 'http://192.168.10.154:9093/api/v1';
  // static const String baseUrl = 'https://fakestoreapi.com';
  // static const String baseUrl = 'https://api.escuelajs.co/api/v1';
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);
  static const String login = '/auth/login';
  static const String profile = '/auth/profile';

  static const header = {
    'Authorization': 'Bearer ${AppKey.xToken}',
    'content-Type': 'application/json',
  };
}
