import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/sheet_wrapper_layout.dart';
import 'package:flutter/material.dart';

class RecipeBottomSheetLayout extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final Widget? action;

  const RecipeBottomSheetLayout({
    Key? key,
    this.child = const Text("Your Widget"),
    this.onTap,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SheetWrapperLayout(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onTap, icon: const Icon(Icons.close)),
                  action ?? Container(),
                ],
              ),
              Flexible(
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [child])),
              ),
            ],
          ),
          Positioned(
            top: -28,
            child: Image.asset('assets/image/asian-food.png',
                width: 60, height: 60),
          ),
        ],
      ),
    );
  }
}
