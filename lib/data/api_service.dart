import 'package:alquran_app/presentation/pages/quran/model/quran_detail_model.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    // Attach the logger as an interceptor
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true, // Log request headers
        requestBody: true, // Log request body
        responseBody: true, // Log response body
        responseHeader: false, // Skip response headers
        compact: false, // Expanded output for better readability
        maxWidth: 90, // Adjust max width of log lines
      ),
    );
  }

  final BASE_URL = "https://equran.id/";

  Future<QuranModel> fetchListQuran() async {
    try {
      final response = await _dio.get('$BASE_URL/api/v2/surat'); // Example API
      if (response.statusCode == 200) {
        return QuranModel.fromJson(
            response.data); // Assuming the API returns a list of items
      } else {
        throw Exception('Failed to load items');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<QuranDetailModel> fetchQuranByNomor(String nomor) async {
    try {
      final response =
          await _dio.get('$BASE_URL/api/v2/surat/${nomor}'); // Example API
      if (response.statusCode == 200) {
        return QuranDetailModel.fromJson(
            response.data); // Assuming the API returns a list of items
      } else {
        throw Exception('Failed to load items');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

// GET Request
  Future<Response> get(String path) async {
    try {
      final respons =  await _dio.get("$BASE_URL$path");
      return respons;
    } catch (e) {
      return _handleError(e as DioException);
    }
  }

  // POST Request
  Future<Response> post(String path, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post("$BASE_URL$path", data: data);
      return response;
    } catch (e) {
      return _handleError(e as DioException);
    }
  }

  // DELETE Request
  Future<Response> delete(String path) async {
    try {
      final response = await _dio.delete("$BASE_URL$path");
      return response;
    } catch (e) {
      return _handleError(e as DioException);
    }
  }

  // Error Handler
  dynamic _handleError(DioException e) {
    if (e.response != null) {
      print('Error Response: ${e.response?.data}');
      return e.response?.data;
    } else {
      print('Error: ${e.message}');
      return e.message;
    }
  }
}
