import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/api/exceptions/network_exceptions.dart';
import 'package:baf/models/todo/config/config_model.dart';
import 'package:baf/models/todo/todo_model.dart';
import 'package:baf/services/network/default_client.dart';
import 'package:stacked/stacked.dart';

class TodoService {
  final log = getLogger('TodoService');
  final _defaultClient = locator<DefaultClient>();

  Future<TodoModel> fetchActivity(ConfigModel data) async {
    ConfigModel payload = data;

    var params = {
      "type": payload.type,
      "minprice": payload.price?.min,
      "maxprice": payload.price?.max,
      "participants": payload.participant,
      "minaccessibility": payload.accessibility!.min,
      "maxaccessibility": payload.accessibility!.max,
    };
    log.wtf("todo");

    var apiResult = await _defaultClient.defaultClient(
      requestType: RequestType.GET,
      serviceURL: "/api",
      params: params,
    );

    return apiResult.when(success: (dynamic data) {
      // return ActivityModel.fromJson(data);
      return TodoModel.fromJson(data);
    }, failure: (NetworkExceptions error) {
      log.i(error);
      return throw error;
    });
  }
}
