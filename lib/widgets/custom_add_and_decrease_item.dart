import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomAddAndDecreaseItem extends StatefulWidget {
  const CustomAddAndDecreaseItem({super.key});

  @override
  State<CustomAddAndDecreaseItem> createState() =>
      _CustomAddAndDecreaseItemState();
}

class _CustomAddAndDecreaseItemState extends State<CustomAddAndDecreaseItem> {
  int text = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              text >0 ? text-- : null;
              setState(() {
                
              });
            },
            icon: Icon(
              Icons.remove,
              size: 32.sp,
              color: kPrimaryColor,
            )),
        Container(
          width: 45.67.w,
          height: 45.67.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            '$text',
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
        IconButton(onPressed: (){
          text++;
          setState(() {
            
          });
        }, icon: Icon(Icons.add,size: 32.sp,color: kPrimaryColor,))
      ],
    );
  }
}
