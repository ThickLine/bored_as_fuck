import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class AnimatedFlipCounterWidget extends StatelessWidget {
  final num value;
  final String decimalSeparator;
  final Duration duration;
  final int fractionDigits;
  final String suffix;
  final TextStyle textStyle;

  const AnimatedFlipCounterWidget(
      {Key? key,
      this.duration = kAnimationFlipCounterDuration,
      this.value = 0,
      this.decimalSeparator = ",",
      this.suffix = "",
      this.textStyle = ktsDescriptionText,
      this.fractionDigits = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      duration: duration,
      decimalSeparator: decimalSeparator,
      suffix: suffix,
      value: value,
      textStyle: textStyle,
      fractionDigits: fractionDigits, // decimal precision
    );
  }
}
