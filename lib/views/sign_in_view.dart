import 'package:flutter/material.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signimagebackground.jpg',),
            fit: BoxFit.fill
          ),
        ),
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderText( text: 'Loging',),
            SizedBox(height: 10,),
            DescriptionText(text: 'Enter your emails and password')
          ],
        ),
      ),
    );
  }
}