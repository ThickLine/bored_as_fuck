import 'package:auto_size_text/auto_size_text.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/page_layout.dart';
import 'package:baf/models/recipe/recipe_model.dart';
import 'package:baf/views/recipe/view/recipe_viewmodel.dart';
import 'package:baf/widgets/animation/progress_bar_widget.dart';
import 'package:baf/widgets/animation/pulsing_widget.dart';
import 'package:baf/widgets/buttons/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:rounded_background_text/rounded_background_text.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

class RecipeView extends StatelessWidget {
  final RecipeModel? data;
  const RecipeView({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RecipeViewModel>.reactive(
      onModelReady: (model) async => await model.init(data),
      fireOnModelReadyOnce: true,
      builder: (context, model, child) => PageLayout(
        isLoading: model.busy(busyObjectKey),
        isError: model.hasErrorForKey(busyObjectKey),
        backgroundColor: kcRecipeColor,
        title: 'recipe_title'.i18n(),
        leftIcon: CircleButtonWidget(
          onPressed: model.onGenerator,
          backgroundColor: kcRecipeColor,
          isText: false,
          child: const Icon(
            // Icons.arrow_forward_sharp,
            Icons.settings,
            color: kcWhiteColor,
            size: 32.0,
          ),
        ),
        trailing: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: model.onShare,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              size: 25,
              color: kcWhiteColor,
            ),
          ),
        ),
        rightIcon: CircleButtonWidget(
          onPressed: model.form.saved == true ? null : model.onSavedItem,
          backgroundColor: kcRecipeColor,
          isText: false,
          child: const Icon(
            // Icons.arrow_forward_sharp,
            Icons.favorite,
            color: kcWhiteColor,
            size: 32.0,
          ),
        ),
        child: RefreshIndicator(
          onRefresh: model.createRandom,
          child: Container(
            padding: kPagePadding,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                        angle: -math.pi / 12.0,
                        child: PulsingWidget(
                          duration: const Duration(seconds: 4),
                          child: Image.asset('assets/image/vegetable.png',
                              width: 40, height: 40),
                        )),
                    Expanded(
                      child: Center(
                        child: AutoSizeText("recipe_subtitle".i18n(),
                            maxLines: 2,
                            minFontSize: 14,
                            style: ktsTitleText.copyWith(color: kcWhiteColor)),
                      ),
                    ),
                    Transform.rotate(
                      angle: math.pi / 12.0,
                      child: PulsingWidget(
                        duration: const Duration(seconds: 3),
                        child: Image.asset('assets/image/banana.png',
                            width: 40, height: 40),
                      ),
                    ),
                  ],
                ),
                kVerticalSpaceSmall,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RoundedBackgroundText(
                            model.form.recipe?.trim() ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                kVerticalSpaceLarge,
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => RecipeViewModel(),
    );
  }
}
