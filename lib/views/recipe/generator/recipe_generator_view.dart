import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/recipe_bottom_sheet_layout.dart';
import 'package:baf/views/recipe/generator/recipe_generator_viewmodel.dart';
import 'package:baf/widgets/buttons/flutter_tags/tags.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/common/sheet_container_widget.dart';
import 'package:baf/widgets/common/text_field_widget.dart';
import 'package:baf/widgets/form/tag_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:baf/views/recipe/generator/recipe_generator_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'recipe'),
])
class RecipeGeneratorView extends StatelessWidget with $RecipeGeneratorView {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;
  final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();
  RecipeGeneratorView({Key? key, this.completer, this.request})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RecipeGeneratorViewModel>.reactive(
      onModelReady: (model) async {
        await model.init(request?.data);
        listenToFormUpdated(model);
      },
      onDispose: (_) => disposeForm(),
      builder: (context, model, child) => RecipeBottomSheetLayout(
          child: Column(
        children: [
          SheetContainerWidget(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                hintText: "Add Ingredients",
                textInputAction: TextInputAction.go,
                actionIcon: GestureDetector(
                    onTap: () {
                      model.onIngredientInput();
                      recipeController.text = "";
                    },
                    child: Icon(Icons.add)),
                onEditingComplete: () {
                  model.onIngredientInput();
                  recipeController.text = "";
                },
                controller: recipeController,
              ),
              TagWidget(
                  isTextField: false,
                  isDeleteButton: true,
                  hintText: "tags",
                  tagKey: _tagStateKey,
                  textStyle: ktsCaptionText.copyWith(color: kcBlackColor),
                  itemCount: model.ingredientList.length,
                  onRemoveButton: model.onIngredientDelete,
                  icon: null,
                  onPressed: null,
                  modelItem: model.ingredientList),
            ],
          )),
          kVerticalSpaceRegular,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SaveButtonWidget(
                backgroundColor: kcPrimaryColor,
                onPressed: model.onGenerator,
                title: "Generate",
              ),
            ],
          ),
          kVerticalSpaceLarge
        ],
      )),
      viewModelBuilder: () => RecipeGeneratorViewModel(),
    );
  }
}
