// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String RecipeValueKey = 'recipe';

mixin $RecipeGeneratorView on StatelessWidget {
  final TextEditingController recipeController = TextEditingController();
  final FocusNode recipeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    recipeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            RecipeValueKey: recipeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    recipeController.dispose();
    recipeFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get recipeValue => this.formValueMap[RecipeValueKey] as String?;

  bool get hasRecipe => this.formValueMap.containsKey(RecipeValueKey);

  bool get hasRecipeValidationMessage =>
      this.fieldsValidationMessages[RecipeValueKey]?.isNotEmpty ?? false;

  String? get recipeValidationMessage =>
      this.fieldsValidationMessages[RecipeValueKey];
}

extension Methods on FormViewModel {
  setRecipeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RecipeValueKey] = validationMessage;
}
