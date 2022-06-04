import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';

class CopyButtonWidget extends StatelessWidget {
  const CopyButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: kcPlaceholderColor.withOpacity(0.6), // Button color
        child: const SizedBox(width: 56, height: 56, child: Icon(Icons.copy)),
      ),
    );
  }
}
