import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class SheetTopWidget extends StatelessWidget {
  final Widget? child;
  const SheetTopWidget({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: kScreenHeightPercentage(context) * 0.1),
        decoration: const BoxDecoration(
            color: kcWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )), //BorderRadius.horizontal),

        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(
                    top: kScreenHeightPercentage(context) * 0.06),
                child: child),
            const Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(
                    Icons.horizontal_rule_outlined,
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
