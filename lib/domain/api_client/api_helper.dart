// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:myapp/domain/api_client/dio_client.dart';
import 'package:myapp/domain/api_client/dio_exception.dart';

String PARAM_STATUS_CODE = 'status_code';
String PARAM_MESSAGE = 'message';
int CODE_SUCCESS = 200;
int CODE_NO_INTERNET = 100;
int CODE_ERROR = 102;
int CODE_RESPONSE_NULL = 103;

abstract mixin class ApiHelper<T> {
  Future<T> getRequest(
      {required String apiURL,
      Map<String, dynamic>? queryParameters,
      required T Function(dynamic json) getJsonCallback}) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }

    try {
      final response = await apiUtils.get(
        url: apiURL,
        queryParameters: queryParameters,
      );
      final encode = json.encode(response.data);
      return getJsonCallback(json.decode(encode));
    } catch (e) {
      return {
        PARAM_STATUS_CODE: CODE_ERROR,
        PARAM_MESSAGE: DioExceptions,
      } as T;
    }
  }

  Future<T> postRequest(
      {required String apiURL,
      data,
      Map<String, dynamic>? queryParameters,
      required T Function(Map<String, dynamic> json) getJsonCallback}) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }
    try {
      final response = await apiUtils.post(
        url: apiURL,
        data: data,
        queryParameters: queryParameters,
      );
      final encode = json.encode(response.data);
      return getJsonCallback(json.decode(encode));
    } catch (e) {
      return {
        PARAM_STATUS_CODE: CODE_ERROR,
        PARAM_MESSAGE: DioExceptions,
      } as T;
    }
  }
}

class ResponseModel<T> {
  T? data;
  String? responseMessage;
  String? responseCode;

  ResponseModel({this.responseMessage, this.responseCode, this.data});

  ResponseModel.fromJson(Map<String, dynamic> json,
      {T Function(Map<String, dynamic>)? fromJsonT}) {
    data = json['result'] != null ? fromJsonT!(json['result']) : null;
    responseCode = json['responseCode'];
    responseMessage = json['responseMessage'];
  }
}
