import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/carrot.png'),
          TextField(
            decoration: InputDecoration(
            filled: true,
              fillColor: Color(0xffF2F3F2),
              labelText: 'Search Store',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xffF2F3F2)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xffF2F3F2)),
            ),
              prefixIcon: Icon(Icons.search_rounded),
            ),
          )
        ]
      ),
    );
  }
}