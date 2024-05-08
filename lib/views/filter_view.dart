import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectarapp/widgets/header_text.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon:  Icon(Icons.close,size: 32.sp,color: Colors.black,),
        ),
        title: const HeaderText(text: 'Filters'),
        centerTitle: true,
      ),
    );
  }
}