import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/page_layout.dart';
import 'package:baf/views/about/about_viewmodel.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutViewModel>.reactive(
      builder: (context, model, child) => PageLayout(
        title: "About App",
        backgroundColor: kcMainBackgroundColor,
        child: Container(
          padding: kPagePadding,
          height: kScreenHeightPercentage(context) * 1,
          child: Stack(children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    "about_description".i18n(),
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
                  Text(
                    "Version ${model.version}",
                    style: ktsCaptionText,
                  )
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
