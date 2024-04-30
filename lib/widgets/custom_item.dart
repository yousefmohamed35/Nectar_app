import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
      ),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/images/banana.png',height: 100.h,width: 100.h,),
             ],
           ),  
            SizedBox(height:50.h),
            Text('Organic Banana',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,),),
            Text('7pcs, priceg',style: TextStyle(fontSize: 14.sp,color: kSecondaryColor),),
              SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$4.99',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                Container(
                  height: 60.h,
                  width: 60.h,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
        
                  ),
                  child: IconButton(
                  
                    onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,size: 32.sp,),
                    ),
                )
              ]
            ),
          ]
        ),
      ),
    );
  }
}
