import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supplychainfinal/utility/colors.dart';

class TextFormImageWidget extends StatelessWidget {
  final String? text, hintText, errorText;
  final IconData preIcon, suffixIcon;

  const TextFormImageWidget(
      {Key? key,
      this.text,
      this.hintText,
      this.errorText,
      required this.preIcon,
      required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!),
        TextFormField(
          validator: (value) {
            if (value!.trim().isEmpty) {
              return errorText;
            }
            return null;
          },
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(25),
              border: customBorder(),
              fillColor: secondaryColor,
              filled: true,
              hintText: hintText,
              suffixIcon: IconButton(
                icon: Icon(
                  suffixIcon,
                ),
                color: primaryColor.withOpacity(0.55),
                onPressed: () {},
              ),
              prefixIcon: Icon(
                preIcon,
                color: primaryColor.withOpacity(0.55),
              ),
              errorBorder: customBorder(),
              focusedBorder: customBorder(),
              enabledBorder: customBorder()),
        ),
        SizedBox(height: 8)
      ],
    );
  }

  customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: primaryColor.withOpacity(0.15),
        width: 2.0,
      ),
    );
  }
}
