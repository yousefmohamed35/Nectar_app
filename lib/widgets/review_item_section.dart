import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/visibilty_widget.dart';

class ReviewSection extends StatefulWidget {
  const ReviewSection({
    super.key,
  });

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}
bool isVisible = true;
class _ReviewSectionState extends State<ReviewSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        const  HeaderText(text: 'Review',),
          Row(
            children: [
              Row(children: [
               Icon(Icons.star,size: 24.sp,color: Colors.amber,),
               Icon(Icons.star,size: 24.sp,color: Colors.amber,),
               Icon(Icons.star,size: 24.sp,color: Colors.amber,),
               Icon(Icons.star,size: 24.sp,color: Colors.amber,),
               Icon(Icons.star,size: 24.sp,color: Colors.amber,),
              ],),
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
                          ),),
            ],
          ),
          ]
        ),
        VisibiltyWidget(isVisible: isVisible,),
      ],
    );
  }
}