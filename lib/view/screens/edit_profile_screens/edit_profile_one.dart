import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:stock_calculation_app/view/widgets/customField.dart';
import 'package:stock_calculation_app/view/widgets/custom_button.dart';

import '../../../controllers/utils/app_extension.dart';
import '../authentication/verification_code_screen.dart';
import 'edit_profile_two.dart';

class EditProfileOne extends StatefulWidget {
  const EditProfileOne({super.key});

  @override
  State<EditProfileOne> createState() => _EditProfileOneState();
}

class _EditProfileOneState extends State<EditProfileOne> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
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
           CustomField(
                  text: 'Full Name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the following field';
                    }
                    return null;
                  },
                ),
             SizedBox(height: mediaQuerySize.height*0.014.h,),
            CustomField(
                  text: 'Username',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the following field';
                    }
                    return null;
                  },
                ),
            SizedBox(height: mediaQuerySize.height*0.014.h,),
            CustomField(
                text: 'Email Address',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the email field';
                  }
                 
                  if (!AppExtension.emailExtension.hasMatch(value.trim())) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
             SizedBox(height: mediaQuerySize.height*0.014.h,),
                 CustomField(
   text: 'Phone Number',
  validator: (value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter the phone number';
    }
    if (!AppExtension.phoneExtension.hasMatch(value.trim())) {
      return 'Please enter a valid phone number';
    }
    return null;
  },
),
             SizedBox(height: mediaQuerySize.height*0.014.h,),
             CustomField(
                  text: 'Description',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the following field';
                    }
                    return null;
                  },
                ),
            SizedBox(height: mediaQuerySize.height*0.04.h,),
             CustomButton(
                  name: 'Edit Deatils',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Get.to(() => EditProfileTwo());
                    }
                  },
                ),
           // CustomButton(name: 'Edit Details',width: mediaQuerySize.width*0.9.w,),
            SizedBox(height: mediaQuerySize.height*0.1.h,),
          
            ],
          ),
        ),
      ),
      ),
      
      ),
    );
  }
}