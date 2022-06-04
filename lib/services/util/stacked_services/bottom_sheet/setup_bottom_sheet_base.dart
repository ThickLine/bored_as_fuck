import 'package:baf/app/app.locator.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/views/recipe/generator/recipe_generator_view.dart';
import 'package:baf/views/story/generator/story_generator_view.dart';
import 'package:baf/views/todo/generator/todo_generator_view.dart';

import 'package:stacked_services/stacked_services.dart';

void setupBottomSheetUi() {
  final _bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.STORY_SHEET: (context, sheetRequest, completer) =>
        StoryGeneratorView(request: sheetRequest, completer: completer),
    BottomSheetType.RECIPE_SHEET: (context, sheetRequest, completer) =>
        RecipeGeneratorView(request: sheetRequest, completer: completer),
    BottomSheetType.TODO_SHEET: (context, sheetRequest, completer) =>
        TodoGeneratorView(request: sheetRequest, completer: completer),
  };

  _bottomSheetService.setCustomSheetBuilders(builders);
}
