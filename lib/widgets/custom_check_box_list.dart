import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomCheckListBox extends StatefulWidget {
  const CustomCheckListBox({
    super.key,
    required this.text,
  });
  final String text;
  @override
  State<CustomCheckListBox> createState() => _CustomCheckListBoxState();
}

class _CustomCheckListBoxState extends State<CustomCheckListBox> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.4.sp,
          child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              activeColor: kPrimaryColor,
              visualDensity: VisualDensity.comfortable,
              value: isSelected,
              onChanged: (value) {
                isSelected = value!;
                setState(() {});
              }),
        ),
        
        Text(
          widget.text,
          style: TextStyle(
            color: isSelected ? kPrimaryColor : Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
