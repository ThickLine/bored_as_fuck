import 'package:auto_size_text/auto_size_text.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final Widget? trailing;
  final Widget? leading;
  const CardWidget(
      {Key? key, this.title, this.description, this.leading, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kcWhiteColor,
      shadowColor: kcPlaceholderColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: leading ?? Container(),
        title: AutoSizeText(
          title ?? "",
          maxLines: 1,
        ),
        subtitle: AutoSizeText(
          description?.trim() ?? "",
          minFontSize: 12,
          maxLines: 2,
        ),
        trailing: trailing ?? Container(),
      ),
    );
  }
}
