import 'dart:io';

import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/api/exceptions/network_exceptions.dart';
import 'package:baf/models/api/result/api_result.dart';
import 'package:baf/services/network/api_client.dart';

import 'package:dio/dio.dart';

class DefaultClient {
  final log = getLogger('UniversalRequest');
  final _api = locator<ApiClient>();

  Future<ApiResult<dynamic>> defaultClient(
      {RequestType? requestType,
      String? serviceURL,
      dynamic postData,
      dynamic params}) async {
    var response;

    try {
      if (requestType == RequestType.POST) {
        response = await _api.dio.post(serviceURL!, data: postData);
      } else if (requestType == RequestType.GET) {
        response = await _api.dio.get(serviceURL!, queryParameters: params);
      } else {
        log.e("No method found");
      }

      return ApiResult.success(data: response.data);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on DioError catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
