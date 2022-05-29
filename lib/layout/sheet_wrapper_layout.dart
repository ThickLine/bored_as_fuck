import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class SheetWrapperLayout extends StatelessWidget {
  final Widget? child;
  final void Function()? onTap;
  final Widget? action;
  final Color? backgroundColor;
  final double? height;
  const SheetWrapperLayout({
    Key? key,
    this.onTap,
    this.backgroundColor,
    this.action,
    this.child,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Container(
            margin:
                EdgeInsets.only(top: kScreenHeightPercentage(context) * 0.05),
            height: height,
            decoration: const BoxDecoration(
                color: kcBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )),
            child: child));
  }
}
