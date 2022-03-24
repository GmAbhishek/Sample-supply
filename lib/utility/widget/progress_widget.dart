import 'package:flutter/material.dart';
import 'package:supplychainfinal/utility/colors.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 32,
      height: 32,
      child: CircularProgressIndicator(
          strokeWidth: 3,
          valueColor: AlwaysStoppedAnimation<Color>(primaryColor)),
    );
  }
}