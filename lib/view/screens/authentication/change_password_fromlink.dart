import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/utils/app_colors.dart';


import '../../widgets/customField.dart';
import '../../widgets/custom_button.dart';
import 'successfully_reset_password.dart';

class ChangePasswordFromlink extends StatelessWidget {
  ChangePasswordFromlink({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: mediaQuerySize.height * 0.06.h,
              ),
              Center(
                  child: Text(
                'Change Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: mediaQuerySize.height * 0.02.h,
              ),
              Text(
                'Enter your Email Address to receive ',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: mediaQuerySize.height * 0.01.h,
              ),
              Text(
                'a password reset link. ',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: mediaQuerySize.height * 0.03.h,
              ),
              CustomField(
                text: 'Email',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: mediaQuerySize.height * 0.03.h,
              ),
              CustomButton(
                width: mediaQuerySize.width * 0.9,
                name: 'Send Reset Link',
                onTap: () {
                  if (formKey.currentState!.validate() ?? false) {
                    Get.to(() => SuccessfullyPasswordResetted());
                  }
                },
              ),
              SizedBox(
                height: mediaQuerySize.height * 0.03.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Remember Password?',
                    style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text('  Back to', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in',
                            style: TextStyle(color: AppColors.buttonColor, fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
