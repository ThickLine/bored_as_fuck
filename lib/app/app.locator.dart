// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/activity_service.dart';
import '../services/counter_service.dart';
import '../services/network/api_client.dart';
import '../services/network/default_client.dart';
import '../services/save_service.dart';
import '../services/shared_preferences_service.dart';

final locator = StackedLocator.instance;

Future setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => ActivityService());
  locator.registerLazySingleton(() => SaveService());
  locator.registerLazySingleton(() => CounterService());
  locator.registerLazySingleton(() => ApiClient());
  locator.registerLazySingleton(() => DefaultClient());
  final sharedPreferencesService = await SharedPreferencesService.getInstance();
  locator.registerSingleton(sharedPreferencesService);
}
