// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../models/recipe/recipe_model.dart';
import '../models/story/story_model.dart';
import '../models/todo/todo_model.dart';
import '../views/about/about_view.dart';
import '../views/config/config_view.dart';
import '../views/home/home_view.dart';
import '../views/recipe/view/recipe_view.dart';
import '../views/saved/saved_view.dart';
import '../views/startup/startup_view.dart';
import '../views/story/view/story_view.dart';
import '../views/todo/todo_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String homeView = '/home-view';
  static const String configView = '/config-view';
  static const String storyView = '/story-view';
  static const String recipeView = '/recipe-view';
  static const String todoView = '/todo-view';
  static const String savedView = '/saved-view';
  static const String aboutView = '/about-view';
  static const all = <String>{
    startUpView,
    homeView,
    configView,
    storyView,
    recipeView,
    todoView,
    savedView,
    aboutView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.configView, page: ConfigView),
    RouteDef(Routes.storyView, page: StoryView),
    RouteDef(Routes.recipeView, page: RecipeView),
    RouteDef(Routes.todoView, page: TodoView),
    RouteDef(Routes.savedView, page: SavedView),
    RouteDef(Routes.aboutView, page: AboutView),
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
          isBottomSheet: args.isBottomSheet,
        ),
        settings: data,
      );
    },
    StoryView: (data) {
      var args = data.getArgs<StoryViewArguments>(
        orElse: () => StoryViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => StoryView(
          key: args.key,
          data: args.data,
        ),
        settings: data,
      );
    },
    RecipeView: (data) {
      var args = data.getArgs<RecipeViewArguments>(
        orElse: () => RecipeViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => RecipeView(
          key: args.key,
          data: args.data,
        ),
        settings: data,
      );
    },
    TodoView: (data) {
      var args = data.getArgs<TodoViewArguments>(
        orElse: () => TodoViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TodoView(
          key: args.key,
          data: args.data,
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
    AboutView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AboutView(),
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
  final bool isBottomSheet;
  ConfigViewArguments(
      {this.key,
      this.scrollController,
      this.request,
      this.completer,
      this.isBottomSheet = false});
}

/// StoryView arguments holder class
class StoryViewArguments {
  final Key? key;
  final StoryModel? data;
  StoryViewArguments({this.key, this.data});
}

/// RecipeView arguments holder class
class RecipeViewArguments {
  final Key? key;
  final RecipeModel? data;
  RecipeViewArguments({this.key, this.data});
}

/// TodoView arguments holder class
class TodoViewArguments {
  final Key? key;
  final TodoModel? data;
  TodoViewArguments({this.key, this.data});
}

/// SavedView arguments holder class
class SavedViewArguments {
  final Key? key;
  final ScrollController? scrollController;
  SavedViewArguments({this.key, this.scrollController});
}
