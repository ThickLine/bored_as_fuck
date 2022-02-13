import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/config_layout.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/config/config_viewmodel.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/buttons/spinbox_widget.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:baf/widgets/slider/range_slider_widget.dart';
import 'package:baf/widgets/text/section_title_widget.dart';

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfigView extends StatelessWidget {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;
  final ScrollController? scrollController;
  final bool isBottomSheet;
  const ConfigView(
      {Key? key,
      this.scrollController,
      this.request,
      this.completer,
      this.isBottomSheet = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GroupButtonController();

    return ViewModelBuilder<ConfigViewModel>.reactive(
      onModelReady: ((model) => controller.selectIndex(model.statusIndex)),
      builder: (context, model, child) => WrapperLayout(
        child: Scaffold(
          appBar: AppBarWidget(
            leading: Container(),
            preferredSize: const Size.fromHeight(56),
            backgroundColor: kcWhiteColor,
            title: "Configure",
            actions: [
              isBottomSheet != true
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: model.onSavedRoute,
                          child: const Icon(
                            Icons.favorite,
                            color: kcPlaceholderColor,
                          )),
                    )
                  : Container()
            ],
          ),
          backgroundColor: kcBlackBackgroundColor,
          body: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConfigLayout(
                      child: Column(
                    children: [
                      // Range
                      Row(
                        children: const [
                          Text(
                            "Filter by price range",
                            style: ktsLabelSmallText,
                          ),
                        ],
                      ),
                      kVerticalSpaceSmall,
                      RangeSliderWidget(
                        lowValue: model.config.price?.min ?? 0,
                        highValue: model.config.price?.max ?? 0,
                        maxValue: 1500,
                        from: 0,
                        step: 10,
                        onDragging: (handlerIndex, lowerValue, upperValue) =>
                            model.setPriceSliderValues(
                                handlerIndex: handlerIndex,
                                lowerValue: lowerValue,
                                upperValue: upperValue),
                      ),
                      kVerticalSpaceMedium,
                      // Category
                      Row(
                        children: const [
                          Text(
                            "Filter by category",
                            style: ktsLabelSmallText,
                          ),
                        ],
                      ),
                      kVerticalSpaceTiny,
                      GroupButton(
                        options: GroupButtonOptions(
                          selectedColor: kcPrimaryColor,
                          borderRadius: BorderRadius.circular(30),
                          spacing: 5,
                          buttonWidth: 110,
                          selectedTextStyle: ktsLabelSmallText.copyWith(
                              fontSize: kCaptionTextSize, color: kcWhiteColor),
                          unselectedTextStyle: ktsLabelSmallText.copyWith(
                              fontSize: kCaptionTextSize,
                              color: kcPlaceholderColor),
                        ),
                        controller: controller,
                        buttons: model.categoriesList
                            .map((el) => el.toUpperCase())
                            .toList()
                            .cast<String>(),
                        onSelected: (i, c) {
                          controller.selectIndex(i);
                          model.onCatogoriesSelect(i);
                        },
                      ),
                      kVerticalSpaceMedium,

                      // Accessibility

                      SectionTiteWidget(
                        isTooltip: true,
                        title: "Filter by accessibility",
                        tooltipText: "lower easier to acquire",
                      ),
                      kVerticalSpaceSmall,
                      RangeSliderWidget(
                        lowValue: model.config.accessibility?.min ?? 0,
                        highValue: model.config.accessibility?.max ?? 0,
                        from: 0,
                        maxValue: 1.0,
                        step: 0.01,
                        textMin: "Min accessibility",
                        textMax: "Max accessibility",
                        onDragging: (handlerIndex, lowerValue, upperValue) =>
                            model.setAccessibilitySliderValues(
                                handlerIndex: handlerIndex,
                                lowerValue: lowerValue,
                                upperValue: upperValue),
                      ),
                      kVerticalSpaceMedium,
                      // Participant
                      Row(
                        children: const [
                          Text(
                            "Filter by participant",
                            style: ktsLabelSmallText,
                          ),
                        ],
                      ),
                      kVerticalSpaceTiny,
                      SpinBoxWidget(
                        value: model.config.participant ?? 1,
                        onChanged: model.onParticipant,
                      )
                    ],
                  )),
                  kVerticalSpaceMedium,
                  SaveButtonWidget(
                    backgroundColor: kcPrimaryColor,
                    onPressed: model.onRoute,
                    title: "Generate",
                  ),
                  kVerticalSpaceMedium,
                ],
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ConfigViewModel(),
    );
  }
}
