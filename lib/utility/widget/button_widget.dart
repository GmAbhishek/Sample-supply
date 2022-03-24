import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final Color tColor, bColor;
  final Function() press;
  const ButtonWidget({
    Key? key,
    this.text,
    required this.tColor,
    required this.bColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: bColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: Text(
          text!,
          style: TextStyle(color: tColor, fontSize: 16),
        ),
      ),
    );
  }
}
