import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';

class CustomCheckListBox extends StatefulWidget {
  const CustomCheckListBox({
    super.key,
  });

  @override
  State<CustomCheckListBox> createState() => _CustomCheckListBoxState();
}

class _CustomCheckListBoxState extends State<CustomCheckListBox> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.4,
      child: Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          activeColor: kPrimaryColor,
          visualDensity: VisualDensity.comfortable,
          value: isSelected,
          onChanged: (value) {
            isSelected = value!;
            setState(() {
              
            });
          }),
    );
  }
}
