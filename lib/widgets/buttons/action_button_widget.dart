import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? elevation;
  final EdgeInsets? padding;
  final void Function()? onPressed;

  const ActionButtonWidget({
    Key? key,
    this.child,
    this.onPressed,
    this.elevation,
    this.color,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: elevation ?? 4.0,
      fillColor: color ?? Colors.transparent,
      child: child,
      padding: padding ?? const EdgeInsets.all(0),
      shape: const CircleBorder(),
    );
  }
}
