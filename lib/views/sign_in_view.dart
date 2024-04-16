import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/header_text.dart';
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signimagebackground.jpg'),
            fit: BoxFit.fill
          ),
        ),
        child: Center(
        child: HeaderText( text: 'Loging',),
        ),
      ),
    );
  }
}