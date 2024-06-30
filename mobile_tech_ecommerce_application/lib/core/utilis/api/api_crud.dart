import 'package:dio/dio.dart';

class ApiCrud {
  ApiCrud({required this.dio});
  final Dio dio;

  Future<Map<String, dynamic>> getData({required String url}) async {
    final response = await dio.get(url);
    // print(response);

    return response.data;
  }
}
