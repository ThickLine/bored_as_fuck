import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/views/item/item_viewmodel.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/buttons/circle_button.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:baf/widgets/common/sheet_top_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:stacked/stacked.dart';

class ItemView extends StatelessWidget {
  final ActivityModel? activity;
  const ItemView({Key? key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ItemViewModel>.reactive(
      onModelReady: (model) => model.init(activity ?? ActivityModel()),
      builder: (context, model, child) => WrapperLayout(
          child: Scaffold(
        appBar: AppBarWidget(
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
            model.activity!.type ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(color: kcWhiteColor),
          ),
          actions: [
            IconButton(
              onPressed: model.onShare,
              icon: const Icon(Icons.share),
            )
          ],
        ),
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
                              style:
                                  ktsTitleText.copyWith(color: kcWhiteColor)),
                        ),
                      )
                    : Expanded(
                        child: ListView(
                        children: [
                          const Icon(Icons.emoji_objects_outlined,
                              size: 70, color: kcWhiteColor),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(model.activity!.activity ?? "",
                                      textAlign: TextAlign.center,
                                      style: ktsTitleText.copyWith(
                                          color: kcWhiteColor)),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              const Divider(
                                color: kcWhiteColor, //color of divider
                                height: 5, //height spacing of divider
                                thickness: 3, //thickness of divier line
                                indent: 80, //spacing at the start of divider
                                endIndent: 80, //spacing at the end of divider
                              ),
                              GestureDetector(
                                onTap: model.onActivity,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                              model.activity!.suggestion ?? "",
                                              textAlign: TextAlign.center,
                                              style:
                                                  ktsDescriptionText.copyWith(
                                                      color: kcWhiteColor)),
                                        )
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
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
                                    Icons.arrow_forward_sharp,
                                    color: kcWhiteColor,
                                    size: 45.0,
                                  ),
                                )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            model.activity?.error != null || model.isActiveActivity == false
                ? Container()
                : Positioned(
                    bottom: kScreenHeightPercentage(context) * 0.2,
                    right: kScreenWidthPercentage(context) * 0.43,
                    child: ClipOval(
                      child: Material(
                        color:
                            kcPlaceholderColor.withOpacity(0.6), // Button color
                        child: InkWell(
                          splashColor: kcPlaceholderColor, // Splash color
                          onTap: () async {
                            await Clipboard.setData(ClipboardData(
                                text: model.activity?.suggestion));
                            model.onCopyText();
                          },
                          child: const SizedBox(
                              width: 56, height: 56, child: Icon(Icons.copy)),
                        ),
                      ),
                    )),
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
}
