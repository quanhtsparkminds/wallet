import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:myapp/domain/api_client/api_config.dart';
import 'package:myapp/domain/api_client/interceptor/auth_interceptor.dart';
import 'package:myapp/domain/api_client/interceptor/dio_cache_interceptor.dart';
import 'package:myapp/config/env.dart';

const title = 'ApiUtils';

ApiUtils apiUtils = ApiUtils();

class ApiUtils {
  static final ApiUtils _apiUtils = ApiUtils._internal();
  Dio _dio = Dio();

  ApiUtils._internal() {
    _dio = Dio()
      ..options.baseUrl = dotenv.env[EnvKeys.baseUrl]!
      ..options.headers = ApiConfig.header
      ..options.connectTimeout = ApiConfig.connectionTimeout
      ..options.receiveTimeout = ApiConfig.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.addAll([
        AuthLogInterceptor(),
        DioCacheInterceptor(options: CacheInterceptor.options),
      ]);
  }

  factory ApiUtils() {
    return _apiUtils;
  }

  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    var result = await _dio.get(
      url,
      queryParameters: queryParameters,
    );
    return result;
  }

  Future<Response> post({
    required String url,
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var result = await _dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
    );
    return result;
  }

  Future<Response> postWithProgress({
    required String url,
    data,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onSendProgress,
  }) async {
    //
    var result = await _dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
      onSendProgress: onSendProgress,
    );
    return result;
  }

  Future<Response> put({
    required String url,
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var result = await _dio.put(
      url,
      data: data,
      queryParameters: queryParameters,
    );
    return result;
  }

  Future<Response> delete({
    required String api,
    Map<String, dynamic>? queryParameters,
  }) async {
    //Options options = Options(headers: secureHeaders);
    //var result = await _dio.delete(api, options: options);
    var result = await _dio.delete(
      api,
      queryParameters: queryParameters,
    );
    return result;
  }

  getFormattedError() {
    return {'error': 'Error'};
  }

  getNetworkError() {
    return 'No Internet Connection.';
  }
}
