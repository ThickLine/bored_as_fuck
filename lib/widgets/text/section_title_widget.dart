import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class SectionTiteWidget extends StatelessWidget {
  final String title;
  final String tooltipText;
  final bool isTooltip;
  const SectionTiteWidget(
      {Key? key,
      this.title = "",
      this.tooltipText = "",
      this.isTooltip = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isTooltip == true
        ? Tooltip(
            message: tooltipText,
            child: Row(
              children: [
                Text(
                  title,
                  style: ktsLabelSmallText,
                ),
                kHorizontalSpaceSmall,
                Center(
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
          );
  }
}
