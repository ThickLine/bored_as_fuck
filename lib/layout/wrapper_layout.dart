import 'package:flutter/material.dart';

class WrapperLayout extends StatelessWidget {
  final Widget? child;
  const WrapperLayout({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: child ?? Container(),
    );
  }
}
