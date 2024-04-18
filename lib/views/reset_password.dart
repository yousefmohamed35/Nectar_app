import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/pin_code.dart';
import 'package:nectarapp/widgets/reset_password_header.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
      const  Expanded(
          flex: 1,
          child:  ResetPasswordHeader()
          ),
         Expanded(
           flex: 3,
           child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10.0,
                  spreadRadius: 10
                )
              ]
            ),
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             HeaderText(text: 'Reset Password'),
             DescriptionText(text: 'Enter your email for verification process we will send 5 digits code to your email'),
             Text('Enter the 5 digits code',style: TextStyle(
              fontSize: 16,
              color: Color(0xff7C7C7C),
              fontWeight: FontWeight.bold,
             ),),
             PinCode(),
              ]
            )
           ),
         ),
        ],
      )
    );
  }
}

