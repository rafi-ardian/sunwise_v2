import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:sunwise_v2/core/constant/app_constants.dart';
import 'package:sunwise_v2/core/errors/exceptions.dart';

class ApiClient {
  final http.Client client;

  ApiClient({required this.client});

  /// Fungsi GET request
  Future<Map<String, dynamic>> get(String endpoint) async {
    final url = Uri.parse('${AppConstants.baseUrl}/$endpoint');
    try {
      final response = await client.get(url).timeout(
            Duration(seconds: AppConstants.timeoutInSeconds),
          );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw ServerException(message: 'Error: ${response.statusCode}');
      }
    } on SocketException {
      throw NetworkException();
    } catch (e) {
      throw ServerException(message: 'Unexpected Error: $e');
    }
  }

  /// Fungsi POST request
  Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('${AppConstants.baseUrl}/$endpoint');
    try {
      final response = await client
          .post(
            url,
            headers: {'Content-Type': 'application/json'},
            body: json.encode(body),
          )
          .timeout(Duration(seconds: AppConstants.timeoutInSeconds));

      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw ServerException(message: 'Error: ${response.statusCode}');
      }
    } on SocketException {
      throw NetworkException();
    } catch (e) {
      throw ServerException(message: 'Unexpected Error: $e');
    }
  }
}
