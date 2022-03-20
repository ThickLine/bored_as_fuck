import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/mixin/icon_mixin.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/views/item/item_viewmodel.dart';
import 'package:baf/widgets/animation/coaching_widget.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/buttons/circle_button.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:baf/widgets/common/sheet_top_widget.dart';
import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:stacked/stacked.dart';

class ItemView extends StatelessWidget {
  final ActivityModel? activity;
  const ItemView({Key? key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ItemViewModel>.reactive(
      onModelReady: (model) async {
        model.init(activity ?? ActivityModel());

        WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
          FeatureDiscovery.discoverFeatures(context, <String>[
            'feature4',
          ]);
        });
      },
      builder: (context, model, child) => WrapperLayout(
          child: Scaffold(
        appBar: _appBar(model, context),
        backgroundColor: kcLightBackgroundColor,
        body: Stack(
          children: [
            Container(
              padding: kPagePadding,
              margin: EdgeInsets.only(
                  bottom: kScreenHeightPercentage(context) * 0.05),
              child: Column(children: [
                model.activity?.error != null
                    ? Expanded(
                        child: Center(
                          child: Text(model.activity!.error!,
                              textAlign: TextAlign.center,
                              style:
                                  ktsTitleText.copyWith(color: kcWhiteColor)),
                        ),
                      )
                    : Expanded(child: _list(model)),
                // Controls
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: kScreenHeightPercentage(context) * 0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          model.activity?.error != null ||
                                  model.activity!.saved == true
                              ? Container()
                              : CircleButtonWidget(
                                  backgroundColor: Colors.red,
                                  isText: false,
                                  child: const Icon(
                                    Icons.favorite,
                                    color: kcWhiteColor,
                                    size: 45.0,
                                  ),
                                  onPressed: model.onSavedItem,
                                ),
                          model.activity?.error != null
                              ? Container()
                              : CircleButtonWidget(
                                  onPressed: model.onLoadNext,
                                  backgroundColor: Colors.blue,
                                  isText: false,
                                  child: const Icon(
                                    // Icons.arrow_forward_sharp,
                                    Icons.arrow_forward_rounded,
                                    color: kcWhiteColor,
                                    size: 40.0,
                                  ),
                                )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Positioned(
              bottom: kScreenHeightPercentage(context) * 0.2,
              right: kScreenWidthPercentage(context) * 0.43,
              child: CoachingWidget(
                  featureId: "feature4",
                  targetColor: kcBackgroundColor,
                  textColor: Colors.black,
                  contentLocation: ContentLocation.below,
                  title: Text(
                    'Copy activity',
                    style: ktsTitleText.copyWith(color: kcWhiteColor),
                  ),
                  enablePulsingAnimation: true,
                  overflowMode: OverflowMode.extendBackground,
                  description: Text(
                    'To copy activity, touch text section and press copy icon to copy text to clipboard.',
                    style: ktsDescriptionText.copyWith(color: kcWhiteColor),
                  ),
                  tapTarget: _copyButton(),
                  child: model.activity?.error != null ||
                          model.isActiveActivity == false
                      ? Container()
                      : InkWell(
                          splashColor: kcPlaceholderColor, // Splash color
                          onTap: () async {
                            await Clipboard.setData(ClipboardData(
                                text: model.activity?.suggestion));
                            model.onCopyText();
                          },
                          child: _copyButton())),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: GestureDetector(
                  onVerticalDragUpdate: (d) => model.onConfig(),
                  onTap: model.onConfig,
                  child: const SheetTopWidget()),
            ), //Bor
          ],
        ),
      )),
      viewModelBuilder: () => ItemViewModel(),
    );
  }

  AppBarWidget _appBar(model, context) {
    return AppBarWidget(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ActionButtonWidget(
          color: kcLightBackgroundColor.withOpacity(0.8),
          elevation: 2,
          child: const Icon(Icons.arrow_back, size: 16),
          onPressed: Navigator.of(context).pop,
        ),
      ),
      backgroundColor: kcLightBackgroundColor,
      toolbarHeight: 100, // default is 56
      toolbarOpacity: 0.5,
      elevation: 0,
      title: Text(
        model.activity?.type?.toUpperCase() ?? "",
        textAlign: TextAlign.center,
        style: const TextStyle(color: kcWhiteColor),
      ),
      actions: [
        IconButton(
          onPressed: model.onShare,
          icon: const Icon(Icons.share),
        )
      ],
    );
  }

  Widget _list(model) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Transform.rotate(
                  angle: -math.pi / 12.0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                        child: Icon(
                            IconMixin.getPIcon(model.activity!.participants),
                            size: 32,
                            color: kcWhiteColor)),
                  ),
                )),
            Expanded(
              flex: 3,
              child: Image.asset(
                "assets/logo.png",
                width: 80,
                height: 80,
              ),
              // Icon(Icons.emoji_objects_outlined,
              //     size: 70, color: Colors.yellow[100]),
            ),
            Expanded(
                flex: 3,
                child: Transform.rotate(
                  angle: math.pi / 12.0,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: IconMixin.getMIcon(model.activity!.price),
                      )),
                ))
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(model.activity!.activity ?? "",
                    textAlign: TextAlign.center,
                    style: ktsTitleText.copyWith(color: kcWhiteColor)),
              ),
            ],
          ),
        ),
        Column(
          children: [
            const Divider(
              color: kcWhiteColor,
              height: 5,
              thickness: 3,
              indent: 80,
              endIndent: 80,
            ),
            GestureDetector(
              onTap: model.onActivity,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Flexible(
                    child: Text(model.activity!.suggestion ?? "",
                        textAlign: TextAlign.center,
                        style:
                            ktsDescriptionText.copyWith(color: kcWhiteColor)),
                  )
                ]),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _copyButton() {
    return ClipOval(
      child: Material(
        color: kcPlaceholderColor.withOpacity(0.6), // Button color
        child: const SizedBox(width: 56, height: 56, child: Icon(Icons.copy)),
      ),
    );
  }
}
