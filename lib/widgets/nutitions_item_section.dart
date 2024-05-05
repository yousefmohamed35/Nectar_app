import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/visibilty_widget.dart';

class NutitionsSection extends StatefulWidget {
  const NutitionsSection({
    super.key,
  });

  @override
  State<NutitionsSection> createState() => _NutitionsSectionState();
}
bool isVisible = true;
class _NutitionsSectionState extends State<NutitionsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        const  HeaderText(text: 'Nutritions',),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.sp,vertical: 5.sp),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('100 g',style: TextStyle(fontSize: 14.sp,color: kSecondaryColor),),
              ),
              isVisible
                  ? IconButton(
                      onPressed: () {
                        setState(() {});
                        isVisible = !isVisible;
                      },
                      icon: Icon(
                        Icons.expand_more,
                        color: Colors.black,
                        size: 32.sp,
                      ))
                  : IconButton(
                      onPressed: () {
                        setState(() {});
                        isVisible = !isVisible;
                      },
                      icon: Icon(
                        Icons.expand_less,
                        color: Colors.black,
                        size: 32.sp,
                      ))
            ],
          ),
          ]
        ),
        VisibiltyWidget(isVisible: isVisible,),
      ],
    );
  }
}