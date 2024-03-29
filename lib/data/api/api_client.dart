import 'package:flutter/material.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token = "";
  @override
  void initState() {
    token = "Emanuel";
    //super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(token),
    );
  }

  final String appBaseUrl;
  late Map<String, String> _mainHeaders;
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      "Content-type": "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };
  }
  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
