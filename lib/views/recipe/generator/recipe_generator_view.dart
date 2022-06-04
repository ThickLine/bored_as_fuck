import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/recipe_bottom_sheet_layout.dart';
import 'package:baf/views/recipe/generator/recipe_generator_viewmodel.dart';
import 'package:baf/widgets/buttons/flutter_tags/item_tags.dart';
import 'package:baf/widgets/buttons/flutter_tags/tags.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/common/sheet_container_widget.dart';
import 'package:baf/widgets/common/text_field_widget.dart';
import 'package:baf/widgets/form/tag_widget.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
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
    int index = 0;
    return ViewModelBuilder<RecipeGeneratorViewModel>.reactive(
      onModelReady: (model) async {
        await model.init(request?.data);
        listenToFormUpdated(model);
      },
      onDispose: (_) => disposeForm(),
      builder: (context, model, child) => RecipeBottomSheetLayout(
          onTap: () => completer!(SheetResponse(confirmed: false)),
          child: Column(
            children: [
              SheetContainerWidget(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldWidget(
                    hintText: "recipe_intput".i18n(),
                    textInputAction: TextInputAction.go,
                    actionIcon: GestureDetector(
                        onTap: () {
                          model.onIngredientInput();
                          recipeController.text = "";
                        },
                        child: const Icon(Icons.add)),
                    onEditingComplete: () {
                      model.onIngredientInput();
                      recipeController.text = "";
                    },
                    controller: recipeController,
                  ),
                  if (model.recipeValidationMessage != null)
                    Text(
                      model.recipeValidationMessage ?? "",
                      style: const TextStyle(color: Colors.red),
                    ),
                  TagWidget(
                      isTextField: false,
                      isDeleteButton: true,
                      hintText: "recipe_tags_title".i18n(),
                      tagKey: _tagStateKey,
                      textStyle: ktsCaptionText.copyWith(color: kcBlackColor),
                      itemCount: model.form.ingredients!.length,
                      onRemoveButton: (i) {
                        model.onIngredientDelete(i);
                        model.setFormStatus();
                      },
                      modelItem: model.form.ingredients!
                          .map((e) => ItemTags(
                              index: index++,
                              title: e.toUpperCase(),
                              color: kcBackgroundColor,
                              customData: null,
                              active: false,
                              singleItem: true))
                          .toList()),
                ],
              )),
              kVerticalSpaceRegular,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SaveButtonWidget(
                    backgroundColor: kcPrimaryColor,
                    onPressed: model.onGenerator,
                    title: "generate_button".i18n(),
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
