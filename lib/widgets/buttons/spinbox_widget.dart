import 'package:flutter/cupertino.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class SpinBoxWidget extends StatelessWidget {
  final double min;
  final double max;
  final double value;
  final bool enabled;
  final bool reset;
  final Function(double)? onChanged;

  const SpinBoxWidget(
      {Key? key,
      this.min = 0,
      this.max = 100,
      this.value = 0,
      this.onChanged,
      this.reset = false,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSpinBox(
      min: min,
      max: max,
      value: reset == true ? 2 : value,
      enabled: enabled,
      onChanged: onChanged,
    );
  }
}
