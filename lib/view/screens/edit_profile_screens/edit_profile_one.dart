import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_calculation_app/view/widgets/customField.dart';
import 'package:stock_calculation_app/view/widgets/custom_button.dart';

class EditProfileOne extends StatelessWidget {
  const EditProfileOne({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQuerySize.height*0.03.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/edit_icon.png',fit: BoxFit.cover,),
            CustomButton(name: 'Personal Information',width: mediaQuerySize.width*0.6.w,),
            Image.asset('assets/images/menu.png',fit: BoxFit.contain,)
          ],
         ),
         SizedBox(height: mediaQuerySize.height*0.1.h,),
         Center(child: Text('Hello! ABC',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
          SizedBox(height: mediaQuerySize.height*0.06.h,),
         Image.asset('assets/images/edit.png'),
         SizedBox(height: mediaQuerySize.height*0.03.h,),
         CustomField(text: 'Name',),
           SizedBox(height: mediaQuerySize.height*0.014.h,),
          CustomField(text: 'Username',),
          SizedBox(height: mediaQuerySize.height*0.014.h,),
          CustomField(text: 'Email Address',),
           SizedBox(height: mediaQuerySize.height*0.014.h,),
          CustomField(text: 'Phone Number',),
           SizedBox(height: mediaQuerySize.height*0.014.h,),
          CustomField(text: 'Description',),
          SizedBox(height: mediaQuerySize.height*0.04.h,),
          CustomButton(name: 'Edit Details',width: mediaQuerySize.width*0.9.w,),
          SizedBox(height: mediaQuerySize.height*0.1.h,),
        
          ],
        ),
      ),
      ),
      
      ),
    );
  }
}