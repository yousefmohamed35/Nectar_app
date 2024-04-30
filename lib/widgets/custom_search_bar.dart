import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectarapp/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
      filled: true,
      labelStyle:const TextStyle(color: kSecondaryColor,fontWeight: FontWeight.w600),
        fillColor:const Color(0xffF2F3F2),
        labelText: 'Search Store',
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:const BorderSide(color: Color(0xffF2F3F2)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:const BorderSide(color: Color(0xffF2F3F2)),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        borderSide:const BorderSide(color:kPrimaryColor),
      ),
        prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,color: Colors.black,),
      ),
    );
  }
}