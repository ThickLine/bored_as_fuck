import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class SectionTiteWidget extends StatelessWidget {
  final String title;
  final String tooltipText;
  final bool isTooltip;
  final Widget? child;
  const SectionTiteWidget(
      {Key? key,
      this.title = "",
      this.tooltipText = "",
      this.child,
      this.isTooltip = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 15, bottom: 15, right: 10),
      decoration: const BoxDecoration(
          color: kcWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          isTooltip == true
              ? Tooltip(
                  message: tooltipText,
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: ktsLabelSmallText,
                      ),
                      kHorizontalSpaceSmall,
                      const Center(
                          child: Icon(
                        Icons.info_outline,
                        color: Colors.blue,
                      ))
                    ],
                  ),
                )
              : Row(
                  children: [
                    Text(
                      title,
                      style: ktsLabelSmallText,
                    ),
                  ],
                ),
          kVerticalSpaceSmall,
          child ?? Container()
        ],
      ),
    );
  }
}
