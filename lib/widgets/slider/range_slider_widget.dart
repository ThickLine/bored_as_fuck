import 'package:another_xlider/another_xlider.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';

class RangeSliderWidget extends StatelessWidget {
  final double lowValue;
  final double highValue;
  final double minValue;
  final double maxValue;
  final dynamic Function(int, dynamic, dynamic)? onDragging;

  const RangeSliderWidget(
      {Key? key,
      this.lowValue = 0,
      this.highValue = 100,
      this.minValue = 0,
      this.maxValue = 1000,
      this.onDragging})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Container(lowValue.toString()),
            _Container(highValue.toString())
          ],
        ),
        SizedBox(
            width: double.maxFinite,
            child: FlutterSlider(
              values: [lowValue, highValue],
              rangeSlider: true,
              selectByTap: true,
              // jump: true,
              step: const FlutterSliderStep(step: 8),
              handlerAnimation: const FlutterSliderHandlerAnimation(
                  curve: Curves.elasticOut,
                  reverseCurve: Curves.bounceIn,
                  duration: Duration(milliseconds: 500),
                  scale: 1.2),
              tooltip: FlutterSliderTooltip(
                  textStyle: TextStyle(fontSize: 17, color: Colors.white),
                  boxStyle: FlutterSliderTooltipBox(
                      decoration: BoxDecoration(
                          color: kcPrimaryColor.withOpacity(0.7)))),
              max: maxValue,
              min: minValue,
              // onDragging: onDragging
              onDragging: onDragging,
            )),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "Min price",
            style: ktsCaptionText,
          ),
          const Text(
            "Max price",
            style: ktsCaptionText,
          )
        ])
      ],
    );
  }

  Widget _Container(String text) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ), //BorderRadius.all
        border: Border.all(width: 0.75, color: kcPlaceholderColor),
      ),
      child: Text(text, style: ktsDescriptionText),
    );
  }
}
