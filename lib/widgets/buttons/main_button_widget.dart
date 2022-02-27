import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final ButtonType? type;
  final VoidCallback? onPressed;
  final bool elevation;
  final String? text;
  final double width;
  final Widget? child;

  const MainButtonWidget(
      {Key? key,
      this.type = ButtonType.PRIMARY,
      this.onPressed,
      this.text,
      this.child,
      this.elevation = true,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: kScreenHeightPercentage(context) * 0.3,
              decoration: BoxDecoration(
                color: getButtonColor(type!),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: elevation == true
                    ? [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          blurRadius: 1,
                          offset: const Offset(2, 3),
                        ),
                      ]
                    : null,
              ),
              child: Center(
                child: text != null
                    ? Text(text!, style: ktsButtonWhiteText)
                    : child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Color getButtonColor(ButtonType type) {
  switch (type) {
    case ButtonType.PRIMARY:
      return kcPrimaryColor;
    case ButtonType.ERROR:
      return kcErrorColor;
    case ButtonType.PLAIN:
      return kcWhiteColor;
    default:
      return kcPrimaryColor;
  }
}

Color getTextColor(ButtonType type) {
  switch (type) {
    case ButtonType.PLAIN:
      return kcPrimaryColor;
    case ButtonType.ERROR:
      return kcWhiteColor;
    case ButtonType.PRIMARY:
      return kcWhiteColor;
    default:
      return kcWhiteColor;
  }
}
