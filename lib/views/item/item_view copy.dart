import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/models/item/item_model.dart';
import 'package:baf/views/item/item_viewmodel.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:baf/widgets/common/sheet_top_widget.dart';
import 'package:flutter/material.dart';
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
          title: model.activity!.type ?? "",
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
                        child: SizedBox(
                          height: kScreenHeightPercentage(context) * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Icon(Icons.emoji_objects_outlined,
                                        color: kcWhiteColor),
                                  ),
                                  kHorizontalSpaceTiny,
                                  Flexible(
                                    flex: 6,
                                    child: Text(model.activity!.activity ?? "",
                                        textAlign: TextAlign.left,
                                        style: ktsTitleText.copyWith(
                                            color: kcWhiteColor)),
                                  ),
                                ],
                              ),
                              Text(model.activity!.suggestion ?? "",
                                  style: ktsDescriptionText.copyWith(
                                      color: kcWhiteColor))
                            ],
                          ),
                        ),
                      ),
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
                          model.activity?.error != null
                              ? Container()
                              : ActionButtonWidget(
                                  color: Colors.red,
                                  padding: const EdgeInsets.all(8),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: kcWhiteColor,
                                    size: 45.0,
                                  ),
                                  onPressed: () => null,
                                ),
                          model.activity?.error != null
                              ? Container()
                              : ActionButtonWidget(
                                  color: Colors.blue,
                                  padding: const EdgeInsets.all(8),
                                  child: const Icon(
                                    Icons.arrow_forward_sharp,
                                    color: kcWhiteColor,
                                    size: 45.0,
                                  ),
                                  onPressed: model.onLoadNext,
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: GestureDetector(
                  onTap: model.onConfig, child: const SheetTopWidget()),
            ), //Bor
          ],
        ),
      )),
      viewModelBuilder: () => ItemViewModel(),
    );
  }
}