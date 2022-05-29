import 'package:baf/core/constants/ingredients_constant.dart';
import 'package:baf/core/extension/random_item_extension.dart';

class RecipeMixin {
  static Future<List<String>>? createRandomRecipe() async {
    var veg = Igredients.VEGETABLES.randomItem();
    var spice = Igredients.SPICES.randomItem();
    var cerealsPulses = Igredients.CEREALS_PULSES.randomItem();
    var dairy = Igredients.DAIRY.randomItem();
    var fruits = Igredients.FRUITS.randomItem();
    var seafood = Igredients.SEAFOOD.randomItem();
    var meat = Igredients.MEAT.randomItem();

    return [veg, spice, cerealsPulses, dairy, fruits, seafood, meat]
        .take(3)
        .toList();
  }
}
