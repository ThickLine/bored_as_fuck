import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/api/exceptions/network_exceptions.dart';
import 'package:baf/models/api/result/api_result.dart';
import 'package:baf/models/config/config_model.dart';
import 'package:baf/models/item/item_model.dart';
import 'package:baf/services/network/default_client.dart';

class ActivityService {
  final log = getLogger('ActivityService');

  final _defaultClient = locator<DefaultClient>();

  ConfigModel _config = ConfigModel();

  ConfigModel get config => _config;

  Future<void> updateConfig(ConfigModel data) async {
    _config = data;
  }

  Future<ActivityModel> fetchActivity() async {
    ConfigModel payload = config;
    var params = {
      "type": payload.type,
      "minprice": payload.price?.min,
      "maxprice": payload.price?.max,
      "minaccessibility": payload.accessibility!.min,
      "maxaccessibility": payload.accessibility!.max,
    };

    var apiResult = await _defaultClient.defaultClient(
      requestType: RequestType.GET,
      serviceURL: "/api",
      params: params,
    );

    return apiResult.when(success: (dynamic data) {
      return ActivityModel.fromJson(data);
    }, failure: (NetworkExceptions error) {
      log.i(error);
      return throw error;
    });
  }
}
