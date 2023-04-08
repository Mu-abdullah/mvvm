import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;
  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respone = await dio.get("$_baseUrl$endpoint");
    return respone.data;
  }
}
