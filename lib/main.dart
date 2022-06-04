import 'dart:async';

import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/core/managers/core_manager.dart';
import 'package:baf/firebase_options.dart';
import 'package:baf/mixin/lock_phone.mixin.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/recipe/recipe_model.dart';
import 'package:baf/models/story/story_model.dart';
import 'package:baf/models/todo/todo_model.dart';
import 'package:baf/services/util/stacked_services/bottom_sheet/setup_bottom_sheet_base.dart';
import 'package:baf/services/util/stacked_services/modal/setup_dialoge_base.dart';
import 'package:baf/services/util/stacked_services/snackbars/setup_snackbar_base.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:localization/localization.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:baf/core/shared/themes.dart' as themes;
import 'package:stacked_themes/stacked_themes.dart';

import 'core/enum/systemwide_enums.dart';

Future main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await ThemeManager.initialise();
    await Hive.initFlutter();
    Hive.registerAdapter(ItemAdapter());
    Hive.registerAdapter(ActivityAdapter());
    Hive.registerAdapter(TodoAdapter());
    Hive.registerAdapter(StoryAdapter());
    Hive.registerAdapter(RecipeAdapter());
    Hive.registerAdapter(ActivityTypeAdapter());
    await Hive.openBox<ItemModel>("myActivity");
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    setupLocator();
    setupSnackBarBase();
    setupBottomSheetUi();
    setupDialogUi();

    await SentryFlutter.init(
      (options) {
        options.dsn = dotenv.env['DSN'];
        options.tracesSampleRate = 1.0;
      },
      appRunner: () => runApp(BAF()),
    );
  },
      (error, stack) =>
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true));
}

class BAF extends StatelessWidget with PortraitModeMixin {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    super.build(context);
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    return CoreManager(
      child: ThemeBuilder(
        defaultThemeMode: ThemeMode.light,
        lightTheme: themes.lightTheme,
        darkTheme: themes.darkTheme,
        builder: (
          context,
          regularTheme,
          darkTheme,
          themeMode,
        ) =>
            MaterialApp(
          title: dotenv.env['NAME'] ?? "BAF",
          theme: regularTheme,
          darkTheme: darkTheme,
          localizationsDelegates: [
            // delegate from flutter_localization
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            // delegate from localization package.
            LocalJsonLocalization.delegate,
          ],
          themeMode: themeMode,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        ),
      ),
    );
  }
}
