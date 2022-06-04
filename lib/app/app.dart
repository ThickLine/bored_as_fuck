import 'package:baf/services/counter_service.dart';
import 'package:baf/services/network/api_client.dart';
import 'package:baf/services/network/default_client.dart';
import 'package:baf/services/recipe_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:baf/services/story_service.dart';
import 'package:baf/services/todo_service.dart';
import 'package:baf/views/about/about_view.dart';
import 'package:baf/views/recipe/view/recipe_view.dart';
import 'package:baf/views/saved/saved_view.dart';
import 'package:baf/views/story/view/story_view.dart';
import 'package:baf/views/todo/todo_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:baf/services/shared_preferences_service.dart';
import 'package:baf/views/home/home_view.dart';
import 'package:baf/views/startup/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StoryView),
    MaterialRoute(page: RecipeView),
    MaterialRoute(page: TodoView),
    MaterialRoute(page: SavedView),
    MaterialRoute(page: AboutView)
  ],
  dependencies: [
    // ?lazySingletons
    // stacked
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),

// Services

    LazySingleton(classType: SaveService),
    LazySingleton(classType: CounterService),
    LazySingleton(classType: RecipeService),
    LazySingleton(classType: StoryService),
    LazySingleton(classType: TodoService),

// Dependencies
    LazySingleton(classType: ApiClient),
    LazySingleton(classType: DefaultClient),

    // Presolve functions
    Presolve(
      classType: SharedPreferencesService,
      presolveUsing: SharedPreferencesService.getInstance,
    ),
  ],
  //  logger
  logger: StackedLogger(),
)
class AppSetup {}
