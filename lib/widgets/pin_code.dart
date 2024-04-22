import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<TextEditingController> otpController =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return _generateTextFormField();
  }

  Widget _generateTextFormField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        otpController.length,
        (index) {
          return _textFormField(index);
        },
      ),
    );
  }

  Widget _textFormField(int index) {
    return Center(
      child: SizedBox(
        height: 70.sp,
        width: 50.sp,
        child: TextFormField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: otpController[index],
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
          decoration: InputDecoration(
            filled: true,
            fillColor:kPrimaryColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: kPrimaryColor,
                
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.blueAccent,
              ),
            ),
          ),
          onChanged: (value) {
            if (value.isEmpty) {
              _focusPreviousField(index);
            } else {
              _focusNextField(index + 1);
            }
          },
        ),
      ),
    );
  }

  void _focusNextField(int index) {
    if (index < 6) {
      FocusScope.of(context).nextFocus();
    }
  }

  void _focusPreviousField(int index) {
    if (index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }
}
