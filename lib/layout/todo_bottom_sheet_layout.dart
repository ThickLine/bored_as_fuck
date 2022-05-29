import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/sheet_wrapper_layout.dart';
import 'package:flutter/material.dart';

class TodoBottomSheetLayout extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final Widget? action;

  const TodoBottomSheetLayout(
      {Key? key,
      this.child = const Text("Your Widget"),
      this.onTap,
      this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SheetWrapperLayout(
      height: kScreenHeightPercentage(context) * 0.95,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            kVerticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: onTap, icon: const Icon(Icons.close)),
                action ?? Container()
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        child,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
