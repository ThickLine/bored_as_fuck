import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class ProgressBarWidget extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  const ProgressBarWidget(
    this.text, {
    Key? key,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiquidLinearProgressIndicator(
        backgroundColor: backgroundColor,
        valueColor: AlwaysStoppedAnimation(kcPrimaryColor),
        borderColor: kcDarkBackgroundColor,
        borderWidth: 5.0,
        center: Text(
          text,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
