import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/widgets/buttons/progress_button.dart';
import 'package:flutter/material.dart';

class SaveButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Color? backgroundColor;
  final bool? isText;
  final Widget? child;
  final bool? isDisabled;

  const SaveButtonWidget({
    Key? key,
    this.onPressed,
    this.title,
    this.isText = true,
    this.minimumSize = const Size(250, 60),
    this.isDisabled = false,
    this.child,
    this.padding =
        const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16.0, left: 16.0),
    this.backgroundColor = kcPrimaryColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kScreenWidthPercentage(context) * 0.7,
      child: ProgressButton(
          color: backgroundColor,
          progressIndicatorSize: 20,
          padding: padding,
          minimumSize: minimumSize,
          disable: isDisabled,
          borderRadius: BorderRadius.circular(30.0),
          strokeWidth: 2,
          child: isText == true
              ? Text(title ?? "", style: ktsButtonWhiteText)
              : child,
          onPressed: (AnimationController controller) async {
            controller.forward();
            try {
              await Future.delayed(
                const Duration(seconds: 1),
              );
              await onPressed!();
              controller.reverse();
            } catch (e) {
              controller.reverse();
            }
          }),
    );
  }
}
