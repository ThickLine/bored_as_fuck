import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/mixin/story_mixin.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/api/exceptions/network_exceptions.dart';
import 'package:baf/models/story/story_model.dart';

import 'package:baf/services/network/default_client.dart';
import 'package:baf/services/save_service.dart';
import 'package:stacked/stacked.dart';

class StoryService with ReactiveServiceMixin {
  final log = getLogger('StoryService');
  final _defaultClient = locator<DefaultClient>();
  final _saveService = locator<SaveService>();

  Future<StoryModel> fetchActivity(StoryModel data) async {
    Map<String, dynamic> payload = data.toJson();

    var apiResult = await _defaultClient.defaultClient(
        requestType: RequestType.POST, serviceURL: "/story", postData: payload);

    return apiResult.when(success: (dynamic data) {
      return StoryModel.fromJson(data);
    }, failure: (NetworkExceptions error) {
      log.i(error);
      return throw error;
    });
  }
}
