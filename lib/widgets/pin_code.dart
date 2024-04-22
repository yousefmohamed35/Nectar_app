import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
 return Scaffold(
 body: _generateTextFormField(),
 );
 }

 Widget _generateTextFormField() {
 return Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 const Text(
 'Otp Screen',
 style: TextStyle(
 fontWeight: FontWeight.bold,
 fontSize: 35,
 ),
 ),
 const SizedBox(
 height: 15,
 ),
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: List.generate(
 otpController.length,
 (index) {
 return _textFormField(index);
 },
 ),
 ),
 ],
 );
 }

 Widget _textFormField(int index) {
 return Center(
 child: SizedBox(
 height: 70,
 width: 50,
 child: TextFormField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 controller: otpController[index],
 inputFormatters: [
 FilteringTextInputFormatter.digitsOnly,
 LengthLimitingTextInputFormatter(1),
 ],
 decoration: InputDecoration(
 enabledBorder: OutlineInputBorder(
 borderRadius: BorderRadius.circular(10),
 borderSide: const BorderSide(
 color: Colors.black,
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