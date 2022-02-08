// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../models/item/item_model.dart';
import '../views/config/config_view.dart';
import '../views/home/home_view.dart';
import '../views/item/item_view.dart';
import '../views/saved/saved_view.dart';
import '../views/startup/startup_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String homeView = '/home-view';
  static const String configView = '/config-view';
  static const String itemView = '/item-view';
  static const String savedView = '/saved-view';
  static const all = <String>{
    startUpView,
    homeView,
    configView,
    itemView,
    savedView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.configView, page: ConfigView),
    RouteDef(Routes.itemView, page: ItemView),
    RouteDef(Routes.savedView, page: SavedView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    ConfigView: (data) {
      var args = data.getArgs<ConfigViewArguments>(
        orElse: () => ConfigViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConfigView(
          key: args.key,
          scrollController: args.scrollController,
          request: args.request,
          completer: args.completer,
        ),
        settings: data,
      );
    },
    ItemView: (data) {
      var args = data.getArgs<ItemViewArguments>(
        orElse: () => ItemViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemView(
          key: args.key,
          activity: args.activity,
        ),
        settings: data,
      );
    },
    SavedView: (data) {
      var args = data.getArgs<SavedViewArguments>(
        orElse: () => SavedViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SavedView(
          key: args.key,
          scrollController: args.scrollController,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ConfigView arguments holder class
class ConfigViewArguments {
  final Key? key;
  final ScrollController? scrollController;
  final SheetRequest<dynamic>? request;
  final dynamic Function(SheetResponse<dynamic>)? completer;
  ConfigViewArguments(
      {this.key, this.scrollController, this.request, this.completer});
}

/// ItemView arguments holder class
class ItemViewArguments {
  final Key? key;
  final ActivityModel? activity;
  ItemViewArguments({this.key, this.activity});
}

/// SavedView arguments holder class
class SavedViewArguments {
  final Key? key;
  final ScrollController? scrollController;
  SavedViewArguments({this.key, this.scrollController});
}
