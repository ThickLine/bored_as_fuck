import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/todo_bottom_sheet_layout.dart';
import 'package:baf/views/todo/generator/todo_generator_viewmodel.dart';
import 'package:baf/widgets/buttons/number_counter/number_counter_view.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/common/sheet_container_widget.dart';
import 'package:baf/widgets/slider/range_slider_widget.dart';
import 'package:baf/widgets/text/section_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:localization/localization.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TodoGeneratorView extends StatelessWidget {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;
  final ScrollController? scrollController;
  const TodoGeneratorView(
      {Key? key, this.completer, this.request, this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GroupButtonController();
    return ViewModelBuilder<TodoGeneratorViewModel>.reactive(
      onModelReady: (model) => {
        model.init(request?.data),
        if (model.statusIndex != null)
          controller.selectIndex(model.statusIndex ?? 0),
      },
      builder: (context, model, child) => TodoBottomSheetLayout(
        onTap: () => completer!(SheetResponse(confirmed: false)),
        action: TextButton(
          onPressed: () {
            model.resetConfig();
            controller.unselectAll();
          },
          child: Text("reset".i18n()),
        ),
        child: Column(
          children: [
            SheetContainerWidget(
                color: kcBackgroundColor,
                child: Column(
                  children: [
                    SectionTiteWidget(
                      isTooltip: false,
                      title: "todo_price_title".i18n(),
                      child: RangeSliderWidget(
                        lowValue: model.form.price?.min ?? 0,
                        highValue: model.form.price?.max ?? 0,
                        maxValue: 1500,
                        from: 0,
                        step: 10,
                        onDragging: (handlerIndex, lowerValue, upperValue) =>
                            model.onPriceSliderValues(
                                handlerIndex: handlerIndex,
                                lowerValue: lowerValue,
                                upperValue: upperValue),
                      ),
                    ),
                    kVerticalSpaceMedium,
                    SectionTiteWidget(
                      isTooltip: false,
                      title: "todo_category_title".i18n(),
                      child: GroupButton(
                        enableDeselect: true,
                        options: GroupButtonOptions(
                          selectedColor: kcPrimaryColor,
                          borderRadius: BorderRadius.circular(30),
                          spacing: 2,
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
                        onSelected: (s, i, c) {
                          model.onCatogoriesSelect(i, c);
                          if (c == false) {
                            return controller.unselectIndex(i);
                          }
                          controller.selectIndex(i);
                        },
                      ),
                    ),
                    kVerticalSpaceMedium,
                    SectionTiteWidget(
                      isTooltip: true,
                      title: "todo_accessibility_title".i18n(),
                      tooltipText: "todo_accessibility_tooltip".i18n(),
                      child: RangeSliderWidget(
                        lowValue: model.form.accessibility?.min ?? 0,
                        highValue: model.form.accessibility?.max ?? 0,
                        from: 0,
                        maxValue: 1.0,
                        step: 0.01,
                        textMin: "todo_accessibility_text_min".i18n(),
                        textMax: "todo_accessibility_text_max".i18n(),
                        onDragging: (handlerIndex, lowerValue, upperValue) =>
                            model.onAccessibilitySliderValues(
                                handlerIndex: handlerIndex,
                                lowerValue: lowerValue,
                                upperValue: upperValue),
                      ),
                    ),
                    kVerticalSpaceMedium,
                    SectionTiteWidget(
                      isTooltip: false,
                      title: "todo_participant_title".i18n(),
                      child: NumberCounterView(
                        key: key,
                        onChanged: model.onParticipant,
                        value: model.form.participant ?? 1,
                      ),
                    ),
                    kVerticalSpaceMedium,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SaveButtonWidget(
                          backgroundColor: kcPrimaryColor,
                          onPressed: model.onSubmit,
                          title: "generate_button".i18n(),
                        ),
                      ],
                    ),
                    kVerticalSpaceLarge
                  ],
                )),
          ],
        ),
      ),
      viewModelBuilder: () => TodoGeneratorViewModel(),
    );
  }
}
