import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/views/about/about_viewmodel.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcLightBackgroundColor,
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
          title: const Text(
            "About",
            textAlign: TextAlign.center,
            style: TextStyle(color: kcWhiteColor),
          ),
        ),
        body: Container(
          padding: kPagePadding,
          height: kScreenHeightPercentage(context) * 1,
          child: Stack(children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    "The Bored as f is a fun project that helps you find things to do when you're bored! The goal is to convert unproductive time to productive, fun ideas that can help you overcome boredom.",
                    style: ktsTitleText.copyWith(color: kcWhiteColor),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/peace.png",
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      viewModelBuilder: () => AboutViewModel(),
    );
  }
}
