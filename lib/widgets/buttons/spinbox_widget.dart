import 'package:flutter/cupertino.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class SpinBoxWidget extends StatelessWidget {
  final double min;
  final double max;
  final double value;
  final Function(double)? onChanged;

  const SpinBoxWidget(
      {Key? key, this.min = 0, this.max = 100, this.value = 0, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSpinBox(
      min: 1,
      max: 100,
      value: 50,
      onChanged: onChanged,
    );
  }
}
