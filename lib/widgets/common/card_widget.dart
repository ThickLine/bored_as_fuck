import 'package:auto_size_text/auto_size_text.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:baf/core/extension/substring_extension.dart';

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
      color: Color(0xffFCF7FF),
      // color: Color(0xffEADEDA)   ,
      shadowColor: kcPlaceholderColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: leading ?? Container(),
        title: Row(
          children: [
            Flexible(
              child: AutoSizeText(
                title?.substringL(28) ?? "",
                maxLines: 1,
                style: ktsLableText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            Flexible(
              child: AutoSizeText(
                description?.trim() ?? "",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        trailing: trailing ?? Container(),
      ),
    );
  }
}
