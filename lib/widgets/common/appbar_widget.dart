import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Widget? leading;
  final Color? backgroundColor;
  final double? toolbarHeight;
  final double toolbarOpacity;
  final List<Widget>? actions;
  final double elevation;
  final String title;
  const AppBarWidget(
      {Key? key,
      required this.leading,
      this.preferredSize = const Size.fromHeight(100),
      this.backgroundColor,
      this.toolbarHeight = 56,
      this.toolbarOpacity = 0.5,
      this.actions,
      this.elevation = 0,
      this.title = "No title"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,

      centerTitle: true,
      backgroundColor: backgroundColor,
      toolbarHeight: toolbarHeight, // default is 56
      toolbarOpacity: toolbarOpacity,
      elevation: elevation,
      actions: actions,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: kcPlaceholderColor),
          ),
        ],
      ),
    );
  }
}
