import 'package:flutter/material.dart';
import 'package:supplychainfinal/utility/colors.dart';

class DropdownWidget extends StatefulWidget {
  final String? text, values;

  final IconData preIcon;
  final Function(String val) onChange;
  List dropdownList = [];
  DropdownWidget(
      {Key? key,
      this.text,
      required this.preIcon,
      required this.onChange,
      required this.dropdownList,
      this.values})
      : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text!),
        DropdownButtonFormField<String>(
          value: widget.values,
          decoration: InputDecoration(
              errorBorder: customBorder(),
              focusedBorder: customBorder(),
              enabledBorder: customBorder()),
          items: widget.dropdownList.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              widget.onChange(value!);
            });
          },
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
