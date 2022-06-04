import 'package:baf/core/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class CurvedListItemWiget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? color;
  final bool isLast;
  final Color? nextColor;
  final void Function()? onPressed;
  const CurvedListItemWiget({
    Key? key,
    this.title,
    this.subtitle,
    this.color,
    this.isLast = false,
    this.onPressed,
    this.nextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nextColor,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(isLast ? 0 : 80.0),
          ),
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 80.0,
          bottom: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title ?? "",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              kVerticalSpaceSmall,
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      subtitle ?? "",
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Expanded(child: const SizedBox()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: onPressed,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Icon(Icons.arrow_forward_rounded,
                          color: Colors.white, size: 36),
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
