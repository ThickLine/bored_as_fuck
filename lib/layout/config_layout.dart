import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class ConfigLayout extends StatelessWidget {
  final Widget? child;
  const ConfigLayout({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kScreenHeightPercentage(context, percentage: 0.80),
      child: Container(
        decoration: const BoxDecoration(
          color: kcWhiteColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)),
        ),
        child: ListView(
          children: [
            // kVerticalSpaceRegular,
            const Center(
              child: Text(
                "Joy generator",
                style: ktsDescriptionText,
              ),
            ),
            kVerticalSpaceRegular,
            // const Center(
            //   child: Text(
            //     "Configure",
            //     style: ktsTitleText,
            //   ),
            // ),
            // kVerticalSpaceRegular,
            Padding(
              padding: kPagePadding,
              child: child ?? Container(),
            )
          ],
        ),
      ),
    );
  }
}
