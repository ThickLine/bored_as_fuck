import 'package:baf/core/shared/styles.dart';
import 'package:baf/widgets/buttons/flutter_tags/item_tags.dart';
import 'package:baf/widgets/buttons/flutter_tags/suggestions_textfield.dart';
import 'package:baf/widgets/buttons/flutter_tags/tags.dart';
import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final void Function(dynamic)? onPressed;
  final void Function(dynamic)? onChanged;
  final void Function(dynamic)? onLongPressed;
  final void Function(int)? onRemoveButton;
  final void Function(dynamic)? onSubmitted;
  final void Function()? onEditingComplete;

  final bool isTextField;
  final bool isDeleteButton;

  final dynamic modelItem;
  final int? itemCount;
  final TagsTextField? textField;
  final String? hintText;
  final ItemTagsIcon? icon;
  final Widget? suffixIcon;
  final String? suffixText;
  final String? errorText;
  final Widget? prefixIcon;
  final int? errorMaxLines;
  final TextStyle? textStyle;
  final GlobalKey<dynamic>? tagKey;
  final Widget? suffix;

  const TagWidget(
      {Key? key,
      this.tagKey,
      this.onEditingComplete,
      this.itemCount,
      this.textField,
      this.modelItem,
      this.textStyle,
      this.onPressed,
      this.icon,
      this.hintText,
      this.onRemoveButton,
      this.onLongPressed,
      this.onSubmitted,
      this.suffixIcon,
      this.suffixText,
      this.errorText,
      this.errorMaxLines,
      this.suffix,
      this.onChanged,
      this.prefixIcon,
      this.isTextField = false,
      this.isDeleteButton = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tags(
          key: tagKey,
          verticalDirection: VerticalDirection.up,
          textDirection: TextDirection.rtl,

          textField: isTextField == true
              ? TagsTextField(
                  enabled: true,
                  hintText: "nana",
                  inputDecoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "hanna",
                    hintStyle: const TextStyle(
                        color: kcDarkBackgroundColor, fontSize: kLabelTextSize),
                    prefixIcon: prefixIcon,
                    suffixIcon: suffixIcon,
                    suffix: suffix,
                    suffixText: suffixText,
                    errorText: errorText,
                    errorMaxLines: errorMaxLines,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                  ),
                  width: double.infinity,
                  //width: double.infinity, padding: EdgeInsets.symmetric(horizontal: 10),
                  onSubmitted: onSubmitted)
              : null,
          itemCount: itemCount!, // required
          itemBuilder: (int index) {
            final item = modelItem[index];

            return ItemTags(
              key: Key(index.toString()),
              index: index, // required
              title: item.title,
              active: item.active,
              textStyle: textStyle!,
              combine: ItemTagsCombine.withTextBefore,
              textActiveColor: Colors.black,
              activeColor: Colors.white,
              customData: item.customData,
              icon: icon,
              removeButton: isDeleteButton == true
                  ? ItemTagsRemoveButton(
                      onRemoved: () {
                        // Remove the item from the data source.
                        onRemoveButton!(index);
                        //required
                        return true;
                      },
                    )
                  : null,

              onPressed: onPressed,
              onLongPressed: onLongPressed,
            );
          },
        ),
      ],
    );
  }
}
