
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/utils/app_colors.dart';
import 'package:stock_calculation_app/controllers/utils/app_extension.dart';
import 'package:stock_calculation_app/controllers/utils/app_textstyles.dart';


import '../../../controllers/getxControllers/password_controller.dart';
import '../../widgets/customField.dart';
import '../../widgets/custom_button.dart';

import '../../widgets/social_mediaicon_widget.dart';
import '../../widgets/terms_contdition_widget.dart';
import 'verification_code_screen.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  PasswordController passwordController = Get.put(PasswordController());
  final TextEditingController passwordFieldController = TextEditingController();


  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Form(
          key: formKey,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: mediaQuerySize.width*0.06.w, vertical: mediaQuerySize.height*0.01.h),
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuerySize.height * 0.1.h,
                ),
               
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Center(
                    child: Text(
                  'Create Your Account',
                  style: AppTextstyles.BoldBlackText()
                )),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                CustomField(
                  text: 'Full Name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the following field';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                CustomField(
   text: '+92 | XXX-XXXXXXX',
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

               
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                  CustomField(
                text: 'Email',
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
               
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                 Obx(
                () => CustomField(
                  text: 'Password',
                  controller: passwordFieldController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  isPasswordField: true,
                  isObscured: !passwordController.isPasswordVisible.value,
                  isSuffixIcon: true,
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordController.isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: passwordController.togglePasswordVisibility,
                  ),
                ),
              ),
            
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                TermsAndConditionsText(),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                CustomButton(
                  name: 'Signup',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Get.to(() => VerificationCodeScreen());
                    }
                  },
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: mediaQuerySize.width*0.01.w),
                      child: Text(
                        'Or With',
                        style: AppTextstyles.simpleGreyText()
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Padding(
                  padding:   EdgeInsets.symmetric(horizontal:mediaQuerySize.width*0.01.w,vertical: mediaQuerySize.height*0.01.h ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaIconsRow(
                        imgUrl: 'assets/images/google3.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SocialMediaIconsRow(
                        imgUrl: 'assets/images/fb.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SocialMediaIconsRow(
                        imgUrl: 'assets/images/appl_img.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Row(
                  children: [
                    Text(
                      ' Already have an account?',
                      style: AppTextstyles.simpleGreyText()
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log in',
                          style: AppTextstyles.simpleRedText()
                        ))
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.05,
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
