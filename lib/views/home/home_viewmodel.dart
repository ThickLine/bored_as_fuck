import 'package:baf/app/app.locator.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/models/curved_list_item/curved_list_item_model.dart';
import 'package:baf/services/shared_preferences_service.dart';
import 'package:baf/views/recipe/view/recipe_view.dart';
import 'package:baf/views/saved/saved_view.dart';
import 'package:baf/views/story/view/story_view.dart';
import 'package:baf/views/todo/todo_view.dart';
import 'package:localization/localization.dart';
import 'package:stacked/stacked.dart';
import 'package:baf/app/app.logger.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final log = getLogger('MainViewModel');
  final _navigationService = locator<NavigationService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  final List<CurvedListItemModel> _list = [
    CurvedListItemModel(
      title: 'todo_list_title'.i18n(),
      subtitle: 'todo_list_subtitle'.i18n(),
      type: ActivityType.TODO,
      color: kcTodoColor,
    ),
    CurvedListItemModel(
      title: 'story_list_title'.i18n(),
      subtitle: 'story_list_subtitle'.i18n(),
      type: ActivityType.STORY,
      color: kcStoryColor,
    ),
    CurvedListItemModel(
      title: 'recipe_list_title'.i18n(),
      subtitle: 'recipe_list_subtitle'.i18n(),
      type: ActivityType.RECIPE,
      color: kcRecipeColor,
    ),
    CurvedListItemModel(
      title: 'saved_list_title'.i18n(),
      color: kcSaveColor,
      type: ActivityType.SAVE,
    ),
    CurvedListItemModel(
      title: 'about_list_title'.i18n(),
      color: kcTodoColor,
      type: ActivityType.ABOUT,
    )
  ];

  List<CurvedListItemModel> get list => _list;

  Future<void> onSaveHomeRoute() async {
    var prefs = _sharedPreferencesService;
    prefs.saveData(key: "isHome", value: true);
  }

// Route to story screen
  Future onStoryRoute() async {
    return _navigationService.navigateWithTransition(const StoryView(),
        transitionStyle: PTransition, duration: kPageDuration);
  }

  // Route to recipe screen
  Future onRecipeRoute() async {
    return _navigationService.navigateWithTransition(const RecipeView(),
        transitionStyle: PTransition, duration: kPageDuration);
  }

  // Route to recipe screen
  Future onTodoRoute() async {
    return _navigationService.navigateWithTransition(const TodoView(),
        transitionStyle: PTransition, duration: kPageDuration);
  }

  // Route to recipe screen
  Future onSavedRoute() async {
    return _navigationService.navigateWithTransition(const SavedView(),
        transitionStyle: PTransition, duration: kPageDuration);
  }
}
