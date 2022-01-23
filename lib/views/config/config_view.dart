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
import 'package:slider_button/slider_button.dart';
import 'package:stacked/stacked.dart';

class ConfigView extends StatelessWidget {
  const ConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GroupButtonController();
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
                  Center(
                    child: ConfigLayout(
                        child: SingleChildScrollView(
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
                            lowValue: model.lowerValue,
                            highValue: model.upperValue,
                            maxValue: 1500,
                            onDragging:
                                (handlerIndex, lowerValue, upperValue) =>
                                    model.setSliderValues(
                                        handlerIndex: handlerIndex,
                                        lowerValue: lowerValue,
                                        upperValue: upperValue),
                          ),
                          kVerticalSpaceRegular,
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
                          kVerticalSpaceRegular,
                          Row(
                            children: [
                              Text(
                                "FILTER BY Participant",
                                style: ktsDescriptionText,
                              ),
                            ],
                          ),
                          kVerticalSpaceTiny,
                          SpinBoxWidget(
                            value: 12,
                          )
                        ],
                      ),
                    )),
                  ),
                  kVerticalSpaceMedium,
                  SizedBox(
                    height: 120,
                    child: SliderButton(
                        action: model.onRoute,
                        label: const Text(
                          "Swipe to continue",
                          style: ktsLableText,
                        ),
                        icon: const Icon(Icons.arrow_forward_rounded)),
                  ),
                  kVerticalSpaceTiny,
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
