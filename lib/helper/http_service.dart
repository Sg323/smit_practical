import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response?> getApi({
    required String url,
    Map<String, String>? headers,
  }) async {
    try {

        debugPrint("GET Request: URL => $url");
        debugPrint("GET Request: Headers => $headers");
  
      final response = await http.get(
        Uri.parse(url),
        headers: headers,
      );
      return _handleResponse(response);
    } catch (e) {
      debugPrint("GET Request Error: $e");
      return null;
    }
  }

  static Future<http.Response?> postApi({
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {

        debugPrint("POST Request: URL => $url");
        debugPrint("POST Request: Headers => $headers");
        debugPrint("POST Request: Body => $body");

      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      debugPrint("POST Request Error: $e");
      return null;
    }
  }

  static http.Response? _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return response;
    } else {
      debugPrint("HTTP Error: ${response.statusCode}");
      return null;
    }
  }
}
