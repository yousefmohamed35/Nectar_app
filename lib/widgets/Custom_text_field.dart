import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text,this.onPressed ,this.isObscure = true});
  final String text;
  final bool isObscure;
 final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xff7C7C7C),
              fontSize: 1.sp * 16,
            ),
          ),
        ),
        SizedBox(
          height: 1.sp * 50,
          child: TextField(
              obscureText: text == 'Password' ? isObscure : false,
              decoration: InputDecoration(
                  suffixIcon: text == 'Password'
                      ? isObscure
                          ? IconButton(
                              onPressed: onPressed,
                              icon: const Icon(
                                Icons.visibility_off,
                                color: Color(0xffC4C4C4),
                                size: 26,
                              ),
                            )
                          : IconButton(
                              onPressed: onPressed,
                              icon: const Icon(
                                Icons.visibility,
                                size: 26,
                              ),
                            )
                      : null,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ))),
        ),
      ],
    );
  }
}
