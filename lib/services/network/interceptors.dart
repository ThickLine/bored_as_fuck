import 'dart:convert';
import 'package:baf/app/app.logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Logging extends Interceptor {
  final log = getLogger('Logging');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log.d('REQUEST[${options.method}] => PATH: ${options.path}');
    String name = dotenv.get('USER');
    String pass = dotenv.get('PASS');

    /// Sets app [Authorization]
    options.headers['Authorization'] =
        'Basic ' + base64Encode(utf8.encode('$name:$pass'));

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log.d(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    log.d(response.data);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    log.e(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    log.e(err.response);
    return super.onError(err, handler);
  }
}
