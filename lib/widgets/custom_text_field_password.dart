import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/description_text.dart';

class CustomTextFieldForPassword extends StatefulWidget {
  const CustomTextFieldForPassword({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CustomTextFieldForPassword> createState() =>
      _CustomTextFieldForPasswordState();
}

class _CustomTextFieldForPasswordState
    extends State<CustomTextFieldForPassword> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: DescriptionText(text: widget.text)),
        SizedBox(
          height: 50.sp,
          child: TextFormField(
              obscureText: isObscure,
              decoration: InputDecoration(
                  suffixIcon: obscurepassword(),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ))),
        ),
      ],
    );
  }

  IconButton obscurepassword() {
    return isObscure
        ? IconButton(
            onPressed: () {
              isObscure = !isObscure;
              setState(() {});
            },
            icon: const Icon(
              Icons.visibility_off,
              color: kSecondaryColor,
              size: 26,
            ),
          )
        : IconButton(
            onPressed: () {
              isObscure = !isObscure;
              setState(() {});
            },
            icon: const Icon(
              Icons.visibility,
              size: 26,
            ),
          );
  }
}
