import 'package:baf/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onSaved;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final Widget? suffix;
  final String? hintText;

  final Widget? prefixIcon;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final bool? readOnly;
  final bool? autofocus;
  final String? suffixText;
  final String? errorText;
  final int? errorMaxLines;
  final bool obscureText;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final String Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const TextFormFieldWidget({
    Key? key,
    required this.hintText,
    this.onChanged,
    required this.controller,
    this.suffix,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly,
    this.suffixText,
    this.onTap,
    this.onSaved,
    this.onEditingComplete,
    this.errorText,
    this.errorMaxLines,
    this.obscureText = false,
    this.focusNode,
    this.validator,
    this.type,
    this.inputFormatters,
    this.textInputAction,
    this.autofocus,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      onTap: onTap,
      autofocus: autofocus ?? true,
      textInputAction: textInputAction,
      focusNode: focusNode,
      validator: validator,
      obscureText: obscureText,
      onEditingComplete: onEditingComplete,
      readOnly: readOnly ?? false,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
            color: kcDarkPlaceholderColor, fontSize: kLabelTextSize),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: suffix,
        suffixText: suffixText,
        errorText: errorText,
        errorMaxLines: errorMaxLines,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
      ),
      controller: controller,
    );
  }
}
