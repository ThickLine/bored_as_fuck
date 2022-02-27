import 'package:baf/core/shared/styles.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/buttons/progress_button.dart';
import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Color? backgroundColor;
  final bool? isText;
  final Widget? child;
  final bool? isDisabled;

  const CircleButtonWidget({
    Key? key,
    this.onPressed,
    this.title,
    this.isText = true,
    this.minimumSize = const Size(80, 80),
    this.isDisabled = false,
    this.child,
    this.padding = const EdgeInsets.all(2),
    this.backgroundColor = kcPrimaryColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ActionButtonWidget(
      child: SizedBox(
        height: 65,
        width: 65,
        child: ProgressButton(
            color: backgroundColor,
            progressIndicatorSize: 20,
            padding: padding,
            minimumSize: minimumSize,
            disable: isDisabled,
            borderRadius: BorderRadius.circular(100.0),
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
      ),
    );
  }
}
