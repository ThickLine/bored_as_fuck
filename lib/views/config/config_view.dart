import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/config_layout.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/config/config_viewmodel.dart';
import 'package:baf/widgets/animation/coaching_widget.dart';
import 'package:baf/widgets/buttons/number_counter/number_counter_view.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:baf/widgets/slider/range_slider_widget.dart';
import 'package:baf/widgets/text/section_title_widget.dart';
import 'package:feature_discovery/feature_discovery.dart';
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
    GlobalKey<EnsureVisibleState> ensureVisibleGlobalKey =
        GlobalKey<EnsureVisibleState>();

    return ViewModelBuilder<ConfigViewModel>.reactive(
      onModelReady: ((model) {
        model.init();
        if (model.statusIndex != null) {
          controller.selectIndex(model.statusIndex!);
        }
        if (isBottomSheet == true) return;
        WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
          FeatureDiscovery.discoverFeatures(context, <String>[
            'feature1',
            'feature2',
            'feature3',
          ]);
        });
      }),
      builder: (context, model, child) => WrapperLayout(
        child: Scaffold(
          appBar: AppBarWidget(
            onTap: () => model.onBottomsheetClose(),
            toolbarHeight: 100,
            preferredSize: const Size.fromHeight(80),
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isBottomSheet == false ? 0 : 25.0),
                    topRight:
                        Radius.circular(isBottomSheet == false ? 0 : 25.0))),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_feature1(model, controller)],
            ),
            backgroundColor: kcWhiteColor,
            title: const Text(
              "Configure",
              textAlign: TextAlign.center,
              style: TextStyle(color: kcPlaceholderColor),
            ),
            actions: [
              isBottomSheet != true
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _feature2(model))
                  : Container()
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            color: kcBlackBackgroundColor,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConfigLayout(
                        child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 50),
                          child: Text(
                            "Here you set generator settings. Or just press 'generate' for a random one.",
                            textAlign: TextAlign.center,
                            style: ktsDescriptionText.copyWith(
                                color: kcPlaceholderColor),
                          ),
                        ),
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
                              model.onPriceSliderValues(
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
                          enableDeselect: true,
                          options: GroupButtonOptions(
                            selectedColor: kcPrimaryColor,
                            borderRadius: BorderRadius.circular(30),
                            spacing: 5,
                            buttonWidth: 110,
                            selectedTextStyle: ktsLabelSmallText.copyWith(
                                fontSize: kCaptionTextSize,
                                color: kcWhiteColor),
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
                            model.onCatogoriesSelect(i, c);
                            if (c == false) {
                              return controller.unselectIndex(i);
                            }
                            controller.selectIndex(i);
                          },
                        ),
                        kVerticalSpaceMedium,

                        // Accessibility
                        const SectionTiteWidget(
                          isTooltip: true,
                          title: "Filter by accessibility",
                          tooltipText: "Lower easier to acquire",
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
                              model.onAccessibilitySliderValues(
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
                        NumberCounterView(
                          key: key,
                          onChanged: model.onParticipant,
                          value: model.config.participant ?? 1,
                        ),
                        kVerticalSpaceTiny,
                      ],
                    )),
                    kVerticalSpaceMedium,
                    _feature3(model, ensureVisibleGlobalKey),
                    kVerticalSpaceMedium,
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ConfigViewModel(),
    );
  }

  Widget _feature1(model, controller) {
    return CoachingWidget(
        featureId: "feature1",
        targetColor: kcBackgroundColor,
        textColor: Colors.black,
        contentLocation: ContentLocation.below,
        title: Text(
          'Reset search',
          style: ktsTitleText.copyWith(color: kcWhiteColor),
        ),
        enablePulsingAnimation: true,
        overflowMode: OverflowMode.extendBackground,
        description: Text(
          'Reset your search query to the default settings',
          style: ktsDescriptionText.copyWith(color: kcWhiteColor),
        ),
        tapTarget: const Text(
          "Reset",
          style: TextStyle(color: Colors.blueAccent),
        ),
        child: TextButton(
          onPressed: () {
            model.resetConfig();
            controller.unselectAll();
          },
          child: const Text("Reset"),
        ));
  }

  Widget _feature2(model) {
    return CoachingWidget(
      featureId: "feature2",
      targetColor: kcBackgroundColor,
      textColor: Colors.black,
      contentLocation: ContentLocation.trivial,
      title: Text(
        'Saved Items',
        style: ktsTitleText.copyWith(color: kcWhiteColor),
      ),
      enablePulsingAnimation: true,
      overflowMode: OverflowMode.extendBackground,
      description: Text(
        'Here you can access your saved activities. These activities are only saved on your phone. Resetting app data will delete them.',
        style: ktsDescriptionText.copyWith(color: kcWhiteColor),
      ),
      tapTarget: const Icon(
        Icons.favorite,
        color: kcErrorColor,
      ),
      child: InkWell(
          onTap: model.onSavedRoute,
          child: Icon(
            Icons.favorite,
            color: model.isSaved ? Colors.red : kcPlaceholderColor,
          )),
    );
  }

  Widget _feature3(model, ensureVisibleGlobalKey) {
    return CoachingWidget(
      featureId: "feature3",
      onOpen: () async {
        var status = true;
        if (isBottomSheet == true) return false;
        WidgetsBinding.instance!.addPostFrameCallback((Duration duration) {
          ensureVisibleGlobalKey.currentState.ensureVisible();
          status = true;
        });
        return status;
      },
      targetColor: kcBackgroundColor,
      textColor: Colors.black,
      contentLocation: ContentLocation.above,
      title: Text(
        'Generate activity',
        style: ktsTitleText.copyWith(color: kcWhiteColor),
      ),
      enablePulsingAnimation: true,
      overflowMode: OverflowMode.extendBackground,
      description: Text(
        'Use generator settings to generate specific activity or just generate a random one.',
        style: ktsDescriptionText.copyWith(color: kcWhiteColor),
      ),
      tapTarget: const Text("Generate"),
      child: EnsureVisible(
        key: ensureVisibleGlobalKey,
        child: SaveButtonWidget(
          backgroundColor: kcPrimaryColor,
          onPressed: model.onRoute,
          title: "Generate",
        ),
      ),
    );
  }
}
