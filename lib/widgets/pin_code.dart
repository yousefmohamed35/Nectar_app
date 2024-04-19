import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {
  const PinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      appContext: context,
      length: 5,
    enableActiveFill: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldWidth: 50,
      inactiveColor: kPrimaryColor,
      selectedColor: kPrimaryColor,
      activeFillColor: kPrimaryColor,
      selectedFillColor: kPrimaryColor,
      inactiveFillColor: kPrimaryColor
      ),
    );
  }
}