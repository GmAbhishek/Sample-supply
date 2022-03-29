
import 'package:flutter/material.dart';
import 'package:supplychainfinal/utility/colors.dart';

import '../responsive.dart';

class SubmitButtonWidget extends StatelessWidget {
  SubmitButtonWidget({Key? key, required this.text, required this.onPress})
      : super(key: key);
  String text;
  Function() onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
        ),
      ),
      onPressed: onPress,
      icon: Icon(Icons.add_circle),
      label: Text(text),
    );
  }
}
