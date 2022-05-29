import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/models/recipe/recipe_model.dart';
import 'package:baf/services/recipe_service.dart';
import 'package:baf/widgets/buttons/flutter_tags/item_tags.dart';
import 'package:baf/views/recipe/generator/recipe_generator_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RecipeGeneratorViewModel extends FormViewModel {
  final log = getLogger('RecipeGeneratorViewModel');
  final _recipeService = locator<RecipeService>();
  final _bottomSheetService = locator<BottomSheetService>();

  final List _ingredientList = [];
  RecipeModel _form = RecipeModel(ingredients: []);
  RecipeModel get form => _form;
  List get ingredientList => _ingredientList;
  @override
  void setFormStatus() {}

  Future<void> init(RecipeModel data) async {
    _form = data;

    int index = ingredientList.length + 1;
    form.ingredients?.forEach((i) {
      _ingredientList.add(ItemTags(
          index: index,
          title: i.toUpperCase(),
          color: kcBackgroundColor,
          customData: null,
          active: false,
          singleItem: true));
    });

    notifyListeners();
  }

  // Updates [Ingredient] item value
  void onIngredientInput() {
    if (recipeValue == null) return;

    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(recipeValue!)) return;

    int index = ingredientList.length + 1;
    ingredientList.add(ItemTags(
        index: index,
        title: recipeValue!.toUpperCase(),
        color: kcBackgroundColor,
        customData: null,
        active: false,
        singleItem: true));
    form.ingredients!.add(recipeValue!);
    log.wtf(form);
    notifyListeners();
  }

  // Delete[Ingredient] item value
  void onIngredientDelete(int value) {
    ingredientList.removeAt(value);
    notifyListeners();
  }

  Future<void> onGenerator() async {
    return _bottomSheetService
        .completeSheet(SheetResponse(confirmed: true, data: form));
  }
}
