import 'package:flutter/material.dart';
import 'package:nectarapp/views/forget_password.dart';

class CustomTextButtonForgetPassword extends StatelessWidget {
  const CustomTextButtonForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPasswordView(),));
        }, child: const Text('Forgot Password?',style: TextStyle(color: Color(0xff181725),),
        ),
      ),
    );
  }
}