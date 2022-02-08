import 'dart:async';

import 'package:another_xlider/another_xlider.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/config_layout.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/config/config_viewmodel.dart';
import 'package:baf/widgets/buttons/spinbox_widget.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:baf/widgets/slider/range_slider_widget.dart';
import 'package:group_button/group_button.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:slider_button/slider_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfigView extends StatelessWidget {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;
  final ScrollController? scrollController;
  const ConfigView({
    Key? key,
    this.scrollController,
    this.request,
    this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GroupButtonController();
    final RoundedLoadingButtonController _btnController =
        RoundedLoadingButtonController();
    return ViewModelBuilder<ConfigViewModel>.reactive(
      builder: (context, model, child) => WrapperLayout(
        child: Scaffold(
          appBar: AppBarWidget(
            leading: Container(),
            preferredSize: const Size.fromHeight(56),
            backgroundColor: kcWhiteColor,
            title: "Configure",
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: model.onSavedRoute,
                    child: const Icon(
                      Icons.favorite,
                      color: kcPlaceholderColor,
                    )),
              )
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
                      Row(
                        children: [
                          Text(
                            "FILTER BY PRICE RANGE",
                            style: ktsDescriptionText,
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
                      Row(
                        children: [
                          Text(
                            "FILTER BY Category",
                            style: ktsDescriptionText,
                          ),
                        ],
                      ),
                      kVerticalSpaceTiny,
                      GroupButton.radio(
                        selectedColor: kcPrimaryColor,
                        controller: controller,
                        selectedButton: model.statusIndex,
                        spacing: 5,
                        buttonWidth: 110,
                        buttons: model.categoriesList
                            .map((el) => el.toUpperCase())
                            .toList()
                            .cast<String>(),
                        borderRadius: BorderRadius.circular(30),
                        onSelected: (i) {
                          controller.selectIndex(i);
                          model.onCatogoriesSelect(i);
                        },
                      ),
                      kVerticalSpaceMedium,
                      Row(
                        children: [
                          Text(
                            "FILTER BY Accessibility",
                            style: ktsDescriptionText,
                          ),
                        ],
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
                      Row(
                        children: const [
                          Text(
                            "FILTER BY Participant",
                            style: ktsDescriptionText,
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
                  RoundedLoadingButton(
                      color: kcPrimaryColor,
                      child: Text('Generate',
                          style: TextStyle(color: Colors.white)),
                      controller: _btnController,
                      onPressed: () async {
                        await model.onRoute();
                        Timer(const Duration(seconds: 2), () {
                          _btnController.reset();
                        });
                        _btnController.success();
                      }),
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
