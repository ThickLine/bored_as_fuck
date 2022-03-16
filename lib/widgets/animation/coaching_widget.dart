import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';

class CoachingWidget extends StatelessWidget {
  final String featureId;
  final Widget? child;
  final Color? targetColor;
  final Color? textColor;
  final Color? backgroundColor;
  final ContentLocation contentLocation;
  final Widget title;
  final Widget description;
  final Duration pulseDuration;
  final bool enablePulsingAnimation;
  final OverflowMode overflowMode;
  final Duration? openDuration;
  final Widget tapTarget;
  final Future<bool> Function()? onOpen;

  const CoachingWidget(
      {Key? key,
      this.child,
      required this.featureId,
      this.targetColor,
      this.textColor,
      this.backgroundColor,
      required this.contentLocation,
      required this.title,
      required this.description,
      this.pulseDuration = const Duration(seconds: 1),
      this.enablePulsingAnimation = true,
      this.overflowMode = OverflowMode.wrapBackground,
      this.openDuration,
      this.onOpen,
      required this.tapTarget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DescribedFeatureOverlay(
        featureId: featureId,
        targetColor: targetColor ?? kcPrimaryColor,
        textColor: textColor ?? kcBlackColor,
        backgroundColor:
            backgroundColor ?? kcDarkBackgroundColor.withOpacity(0.1),
        contentLocation: contentLocation,
        title: title,
        pulseDuration: pulseDuration,
        enablePulsingAnimation: enablePulsingAnimation,
        overflowMode: overflowMode,
        openDuration: openDuration ?? kAnimationDuration,
        barrierDismissible: false,
        description: description,
        onOpen: onOpen,
        tapTarget: tapTarget,
        child: child ?? Container());
  }
}
