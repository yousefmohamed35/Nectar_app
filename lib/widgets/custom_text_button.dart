import 'package:flutter/material.dart';

class CustomTextButtonForgetPassword extends StatelessWidget {
  const CustomTextButtonForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: (){}, child: const Text('Forgot Password?',style: TextStyle(color: Color(0xff181725),),
        ),
      ),
    );
  }
}