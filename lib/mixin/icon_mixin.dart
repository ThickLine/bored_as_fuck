import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';

class IconMixin {
  /// Get [Participant] status icon
  static IconData getPIcon(int value) {
    if (value > 1) return Icons.group;
    return Icons.person;
  }

  /// Get [Price] status icon
  static List<Icon> getMIcon(double data) {
    var value = data * 10;

    var numberList = [];
    List<Icon> iconList = [];

    for (int i = 0; i < value; i++) {
      numberList.add(i);
    }

    for (var e in numberList) {
      iconList
          .add(const Icon(Icons.attach_money, size: 32, color: kcWhiteColor));
    }

    if (numberList.isEmpty && value == 0.0) {
      iconList.add(const Icon(Icons.money_off, size: 32, color: kcWhiteColor));
      return iconList;
    }

    return iconList;
  }
}
