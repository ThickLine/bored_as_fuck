import 'package:baf/services/network/interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiClient {
  static String BASE_URL = dotenv.env['BASE_URL']!;

  static BaseOptions baseOptions = BaseOptions(
    baseUrl: BASE_URL,
    connectTimeout: 30000,
    receiveTimeout: 20000,
  );

  final Dio _dio = Dio(baseOptions)..interceptors.add(Logging());

  Dio get dio => _dio;
}
