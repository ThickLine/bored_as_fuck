import 'package:auto_size_text/auto_size_text.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/page_layout.dart';
import 'package:baf/models/story/story_model.dart';
import 'package:baf/views/story/view/story_viewmodel.dart';
import 'package:baf/widgets/animation/pulsing_widget.dart';
import 'package:baf/widgets/buttons/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

class StoryView extends StatelessWidget {
  final StoryModel? data;
  const StoryView({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StoryViewModel>.reactive(
      onModelReady: (model) async => await model.init(data),
      builder: (context, model, child) => PageLayout(
        isLoading: model.busy(busyObjectKey),
        isError: model.hasErrorForKey(busyObjectKey),
        backgroundColor: kcStoryColor,
        title: 'Story generator',
        leftIcon: CircleButtonWidget(
          onPressed: model.onGenerator,
          backgroundColor: kcStoryColor,
          isText: false,
          child: const Icon(
            // Icons.arrow_forward_sharp,
            Icons.settings,
            color: kcWhiteColor,
            size: 32.0,
          ),
        ),
        rightIcon: CircleButtonWidget(
          onPressed: model.form.saved == true ? null : model.onSavedItem,
          backgroundColor: kcStoryColor,
          isDisabled: model.form.saved == true,
          isText: false,
          child: const Icon(
            // Icons.arrow_forward_sharp,
            Icons.favorite,
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
            ),
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
                          child: Image.asset('assets/image/spooky.png',
                              width: 40, height: 40),
                        )),
                    Expanded(
                      child: Center(
                        child: AutoSizeText(
                            model.form.topic?.toUpperCase() ?? "Story",
                            maxLines: 2,
                            minFontSize: 14,
                            style: ktsTitleText.copyWith(
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Transform.rotate(
                      angle: math.pi / 12.0,
                      child: PulsingWidget(
                        duration: const Duration(seconds: 3),
                        child: Image.asset('assets/image/haunted-house.png',
                            width: 40, height: 40),
                      ),
                    ),
                  ],
                ),
                kVerticalSpaceLarge,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RoundedBackgroundText(
                            model.form.story?.trim() ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: kcBlackColor,
                                fontWeight: FontWeight.bold),
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
      viewModelBuilder: () => StoryViewModel(),
    );
  }
}
