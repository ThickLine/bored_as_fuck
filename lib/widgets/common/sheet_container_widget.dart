import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class SheetContainerWidget extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const SheetContainerWidget({Key? key, this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        width: kScreenWidthPercentage(context) * 1,
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.grey[300]!, spreadRadius: 2)
            ]),
        child: child!);
  }
}
