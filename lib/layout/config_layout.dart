import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class ConfigLayout extends StatelessWidget {
  final Widget? child;
  const ConfigLayout({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kcWhiteColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0)),
      ),
      child: Column(
        children: [
          kVerticalSpaceRegular,
          // const Center(
          //   child: Text(
          //     "Configure",
          //     style: ktsTitleText,
          //   ),
          // ),
          // kVerticalSpaceRegular,
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: child ?? Container(),
          )
        ],
      ),
    );
  }
}
