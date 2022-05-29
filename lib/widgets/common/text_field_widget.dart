import 'package:baf/widgets/form/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final int? maxLines;
  final bool? autofocus;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Widget? actionIcon;
  const TextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.textInputAction,
      this.maxLines,
      this.focusNode,
      this.autofocus,
      this.actionIcon,
      this.onEditingComplete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: TextFormFieldWidget(
                    hintText: hintText,
                    textInputAction: textInputAction,
                    onEditingComplete: onEditingComplete,
                    controller: controller),
              ),
            ),
            actionIcon ?? Container()
          ],
        ));
  }
}
