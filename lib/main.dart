import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/core/managers/core_manager.dart';
import 'package:baf/mixin/lock_phone.mixin.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/services/util/stacked_services/bottom_sheet/setup_bottom_sheet_base.dart';
import 'package:baf/services/util/stacked_services/modal/setup_dialoge_base.dart';
import 'package:baf/services/util/stacked_services/snackbars/setup_snackbar_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:baf/core/shared/themes.dart' as themes;
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await ThemeManager.initialise();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemAdapter());
  Hive.registerAdapter(ActivityAdapter());
  await Hive.openBox<ItemModel>("myActivity");
  setupLocator();
  setupSnackBarBase();
  setupBottomSheetUi();
  setupDialogUi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    super.build(context);

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
          title: dotenv.env['NAME'] ?? "My Pocket",
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        ),
      ),
    );
  }
}
