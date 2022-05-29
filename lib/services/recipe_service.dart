import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/api/exceptions/network_exceptions.dart';
import 'package:baf/models/recipe/recipe_model.dart';
import 'package:baf/services/network/default_client.dart';

class RecipeService {
  final log = getLogger('RecipeService');

  final _defaultClient = locator<DefaultClient>();

  Future<RecipeModel> fetchActivity(RecipeModel data) async {
    Map<String, dynamic> payload = data.toJson();

    var apiResult = await _defaultClient.defaultClient(
        requestType: RequestType.POST,
        serviceURL: "/recipe",
        postData: payload);

    return apiResult.when(success: (dynamic data) {
      return RecipeModel.fromJson(data);
    }, failure: (NetworkExceptions error) {
      log.i(error);
      return throw error;
    });
  }
}
