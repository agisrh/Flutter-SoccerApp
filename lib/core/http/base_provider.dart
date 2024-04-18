import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BaseProvider extends ChangeNotifier {
  final _serverUrl = "https://ligaindonesia-api.vercel.app/api/v1";
  final Dio _dio = Dio();

  getHeaders() async {
    return {
      'Content-Type': 'application/json',
      'Authorization': "",
    };
  }

  dynamic resp;
  get response => resp;

  Future<dynamic> nextmatch() async {
    _dio.options.headers.addAll(await getHeaders());
    var response = await _dio.get('$_serverUrl/nextmatch');
    if (response.statusCode == 200) {
      final result = response.data;
      resp = result;
      return resp;
    } else {
      throw Exception();
    }
  }

  Future<dynamic> statgoals() async {
    _dio.options.headers.addAll(await getHeaders());
    var response = await _dio.get('$_serverUrl/statistics/topscorer');
    if (response.statusCode == 200) {
      final result = response.data;
      resp = result;
      return resp;
    } else {
      throw Exception();
    }
  }

  Future<dynamic> statassist() async {
    _dio.options.headers.addAll(await getHeaders());
    var response = await _dio.get('$_serverUrl/statistics/successful_passes');
    if (response.statusCode == 200) {
      final result = response.data;
      resp = result;
      return resp;
    } else {
      throw Exception();
    }
  }

  Future<dynamic> ycards() async {
    _dio.options.headers.addAll(await getHeaders());
    var response = await _dio.get('$_serverUrl/statistics/yellow_card');
    if (response.statusCode == 200) {
      final result = response.data;
      resp = result;
      return resp;
    } else {
      throw Exception();
    }
  }

  Future<dynamic> rcards() async {
    _dio.options.headers.addAll(await getHeaders());
    var response = await _dio.get('$_serverUrl/statistics/red_card');
    if (response.statusCode == 200) {
      final result = response.data;
      resp = result;
      return resp;
    } else {
      throw Exception();
    }
  }
}
