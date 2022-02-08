import 'package:baf/services/activity_service.dart';
import 'package:baf/services/network/api_client.dart';
import 'package:baf/services/network/default_client.dart';
import 'package:baf/views/config/config_view.dart';
import 'package:baf/views/item/item_view.dart';
import 'package:baf/views/saved/saved_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:baf/services/shared_preferences_service.dart';
import 'package:baf/views/home/home_view.dart';
import 'package:baf/views/startup/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ConfigView),
    MaterialRoute(page: ItemView),
    MaterialRoute(page: SavedView)
  ],
  dependencies: [
    // ?lazySingletons
    // stacked
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),

// Services
    LazySingleton(classType: ActivityService),

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
