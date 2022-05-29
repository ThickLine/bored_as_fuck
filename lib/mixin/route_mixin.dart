import 'package:baf/app/app.router.dart';
import 'package:baf/core/enum/systemwide_enums.dart';

class RouteMixin {
  /// [ActivityType] to [Route] string
  static String getActivityToRoute(ActivityType value) {
    switch (value) {
      case ActivityType.RECIPE:
        return Routes.recipeView;
      case ActivityType.STORY:
        return Routes.storyView;
      case ActivityType.TODO:
        return Routes.todoView;
      default:
        return value.toString();
    }
  }
}
