import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/api/exceptions/network_exceptions.dart';
import 'package:baf/models/config/config_model.dart';

import 'package:baf/services/network/default_client.dart';
import 'package:stacked/stacked.dart';

class ActivityService with ReactiveServiceMixin {
  final log = getLogger('ActivityService');

  final _defaultClient = locator<DefaultClient>();

  final ReactiveValue<ConfigModel> _config = ReactiveValue<ConfigModel>(
      ConfigModel(price: PriceModel(), accessibility: AccessibilityModel()));

  // ConfigModel _config = ConfigModel();

  ConfigModel get config => _config.value;

  Future<void> updateConfig(ConfigModel data) async {
    log.wtf(data);
    _config.value = data;
  }

  Future<void> resetConfig() async {
    _config.value =
        ConfigModel(price: PriceModel(), accessibility: AccessibilityModel());
  }

  void setPriceSliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _config.value = config.copyWith.price!(min: lowerValue, max: upperValue);
  }

  void setAccessibilitySliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _config.value =
        config.copyWith.accessibility!(min: lowerValue, max: upperValue);
  }

  void setParticipant(int data) async {
    _config.value = config.copyWith(participant: data);
  }

  Future<ActivityModel> fetchActivity() async {
    ConfigModel payload = config;
    var params = {
      "type": payload.type,
      "minprice": payload.price?.min,
      "maxprice": payload.price?.max,
      "participants": payload.participant,
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
