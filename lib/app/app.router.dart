// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

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
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ConfigView(),
        settings: data,
      );
    },
    ItemView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ItemView(),
        settings: data,
      );
    },
    SavedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SavedView(),
        settings: data,
      );
    },
  };
}
