import 'package:flutter/material.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/views/home_view.dart';
import 'package:nectarapp/widgets/reset_password_accept_body.dart';

class ResetPasswordAccept extends StatefulWidget {
  const ResetPasswordAccept({super.key});

  @override
  State<ResetPasswordAccept> createState() => _ResetPasswordAcceptState();
}


class _ResetPasswordAcceptState extends State<ResetPasswordAccept> {
  
  @override
  void initState() {
    super.initState();
 Future.delayed(const Duration(seconds: 5), () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
  const HomeView()),);
  });
}
@override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CircularProgressIndicator(
        color: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: kPrimaryColor,
      body: ResetPasswordAcceptBody(),
    );
  }
}
