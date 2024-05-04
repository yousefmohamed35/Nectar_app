import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/constants.dart';
import 'package:nectarapp/widgets/custom_add_and_decrease_item.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/header_text.dart';
import 'package:nectarapp/widgets/nutitions_item_section.dart';
import 'package:nectarapp/widgets/review_item_section.dart';
import 'package:nectarapp/widgets/title_of_item_details_view.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
        
          Container(
            height: 371.44.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.sp),bottomRight: Radius.circular(40.sp)),
              color:const Color(0xffF2F3F2),
              
            ),
            width: double.infinity,
          ),
          Column(
            children: [
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios,size: 32.sp,color: Colors.black,),
                  Icon(Icons.ios_share_outlined,size: 32.sp,color: Colors.black,),
                ]
              ),
            ],
          ),
          Positioned(
          top: 80.h,
          left: 40.w,
            child: SizedBox(
              width: 329.w,
              height: 200.h,
              child: Image.asset('assets/images/banana.png',))),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 371.44.h,),
           const  TitleOfItemDetailsView(),
            const  DescriptionText(text: '7pcs, priceg',),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            const  CustomAddAndDecreaseItem(),
            Text('\$4.99',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
              ],
            ),
          Divider(thickness: 1.sp,color: Colors.grey.shade400,height: 30.h,),
            const ProductDetailsSection(),
            Divider(thickness: 1.sp,color: Colors.grey.shade400,height: 30.h,),
          const  NutitionsSection(),
          Divider(thickness: 1.sp,color: Colors.grey.shade400,height: 30.h,),
          const  ReviewSection(),
          SizedBox(height: 30.h,),
        const CustomButton(text: 'Add to cart',),
          ]
        ),
        ],
      ),
    );
  }
}





class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      HeaderText(text: 'Product Details',),
      Icon(Icons.chevron_right,size: 48.sp,),
      ]
    );
  }
}
