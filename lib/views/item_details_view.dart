import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/custom_add_and_decrease_item.dart';
import 'package:nectarapp/widgets/custom_button.dart';
import 'package:nectarapp/widgets/description_text.dart';
import 'package:nectarapp/widgets/nutitions_item_section.dart';
import 'package:nectarapp/widgets/product_details_section.dart';
import 'package:nectarapp/widgets/review_item_section.dart';
import 'package:nectarapp/widgets/title_of_item_details_view.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        backgroundColor: const Color(0xffF2F3F2),
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.ios_share,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:[ 
            Container(
              height: 300.44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.sp),bottomRight: Radius.circular(40.sp)),
                color:const Color(0xffF2F3F2),
                
              ),
              width: double.infinity,
            ),
            Positioned(
            top: 40.h,
            left: 40.w,
              child: SizedBox(
                width: 329.w,
                height: 200.h,
                child: Image.asset('assets/images/banana.png',))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 300.44.h,),
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
            ),
          ],
        ),
      ),
    );
  }
}





