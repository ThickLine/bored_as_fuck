import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Widget? leading;
  final Widget? title;
  final Color? backgroundColor;
  final double? toolbarHeight;
  final double toolbarOpacity;
  final List<Widget>? actions;
  final double elevation;
  final ShapeBorder? shape;
  final Function()? onTap;

  const AppBarWidget({
    Key? key,
    required this.leading,
    this.preferredSize = const Size.fromHeight(100),
    this.backgroundColor,
    this.toolbarHeight = 56,
    this.toolbarOpacity = 0.5,
    this.actions,
    this.shape,
    this.title,
    this.onTap,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      shape: shape,
      centerTitle: true,
      backgroundColor: backgroundColor,
      toolbarHeight: toolbarHeight, // default is 56
      toolbarOpacity: toolbarOpacity,
      elevation: elevation,
      actions: actions,

      title: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [title ?? Container()],
        ),
      ),
    );
  }
}
