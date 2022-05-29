import 'package:flutter/material.dart';

class CurvedListItemWiget extends StatelessWidget {
  final String? title;
  final String? time;
  final String? people;
  final IconData? icon;
  final Color? color;
  final Color? nextColor;
  final void Function()? onPressed;
  const CurvedListItemWiget({
    Key? key,
    this.title,
    this.time,
    this.icon,
    this.people,
    this.color,
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
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
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
                time ?? "",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                title ?? "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
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
