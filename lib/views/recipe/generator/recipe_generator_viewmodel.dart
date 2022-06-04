import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/models/recipe/recipe_model.dart';
import 'package:baf/services/recipe_service.dart';
import 'package:baf/widgets/buttons/flutter_tags/item_tags.dart';
import 'package:baf/views/recipe/generator/recipe_generator_view.form.dart';
import 'package:localization/localization.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RecipeGeneratorViewModel extends FormViewModel {
  final log = getLogger('RecipeGeneratorViewModel');
  final _bottomSheetService = locator<BottomSheetService>();

  RecipeModel _form = RecipeModel(ingredients: []);
  RecipeModel get form => _form;

  @override
  void setFormStatus() {
    // Set a validation message for the entire form
    if (form.ingredients!.isEmpty) {
      setRecipeValidationMessage('recipe_validation_required'.i18n());
    }
  }

  Future<void> init(RecipeModel data) async {
    _form = data;
    notifyListeners();
  }

  // Updates [Ingredient] item value
  void onIngredientInput() {
    if (recipeValue == null) return;

    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(recipeValue!)) return;

    form.ingredients!.add(recipeValue!);

    notifyListeners();
  }

  // Delete[Ingredient] item value
  void onIngredientDelete(int value) {
    form.ingredients!.removeAt(value);
    notifyListeners();
  }

  Future<void> onGenerator() async {
    return _bottomSheetService
        .completeSheet(SheetResponse(confirmed: true, data: form));
  }
}
