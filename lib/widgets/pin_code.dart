import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PinCode extends StatelessWidget {
  const PinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(appContext: context, length: 5);
  }
}