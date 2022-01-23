import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';

class RoundElevatedButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Color? backgroundColor;
  final bool? isText;
  final Widget? child;
  final RoundedRectangleBorder? shape;
  final double borderRadius;

  RoundElevatedButtonWidget({
    Key? key,
    this.onPressed,
    this.title,
    this.isText = true,
    this.minimumSize = const Size(250, 60),
    this.child,
    this.shape,
    this.borderRadius = 30.0,
    this.padding =
        const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16.0, left: 16.0),
    this.backgroundColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          minimumSize: minimumSize,
          padding: padding,
          shape: shape != null
              ? shape
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
        ),
        child: isText == true
            ? Text(title ?? "", style: ktsButtonWhiteText)
            : child);
  }
}
