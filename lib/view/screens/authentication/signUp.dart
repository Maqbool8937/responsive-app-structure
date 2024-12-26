import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_calculation_app/controllers/utils/app_textstyles.dart';
import 'package:stock_calculation_app/view/widgets/custom_button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
   body: SafeArea(child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Text('Select Your Role',style:TextStyle(fontSize: 22,fontWeight: FontWeight.w700))),
        SizedBox(height: mediaQuerySize.height*0.03.h,),
        CustomButton(name: 'Admin'),
        SizedBox(height: mediaQuerySize.height*0.02.h,),
        CustomButton(name: 'Shortfiler')
      
      ],
     ),
   )),
    );
  }
}