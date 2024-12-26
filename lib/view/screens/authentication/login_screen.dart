import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/utils/app_colors.dart';
import 'package:stock_calculation_app/controllers/utils/app_textstyles.dart';


import '../../../controllers/getxControllers/password_controller.dart';
import '../../../controllers/utils/app_extension.dart';
import '../../widgets/customField.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/social_mediaicon_widget.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

GlobalKey<FormState> formKey = GlobalKey();
PasswordController passwordController = Get.put(PasswordController());
  final TextEditingController passwordFieldController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Form(
          key: formKey,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: mediaQuerySize.width*0.05.w, vertical: mediaQuerySize.height*0.01.h),
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuerySize.height * 0.08.h,
                ),
                Center(
                    child: Text(
                  'Welcome Back',
                  style: AppTextstyles.BoldBlackText()
                )),
                SizedBox(
                  height: mediaQuerySize.height * 0.02.h,
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
              ),                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Remember Password',
                          style: AppTextstyles.SimpleBlackText()
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => ForgotPasswordScreen());
                        },
                        child: Text('Forget Password?', style: AppTextstyles.SimpleBlackText())),
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                CustomButton(
                  name: 'Sign in',
                  onTap: () {
                    if (formKey.currentState!.validate() ?? false) {
                      Get.to(() => ForgotPasswordScreen());
                    }
                    print('no');
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
                      padding:  EdgeInsets.symmetric(horizontal: mediaQuerySize.width*0.02.w),
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
                  height: mediaQuerySize.height * 0.02.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: mediaQuerySize.width*0.01.w,vertical: mediaQuerySize.height*0.01.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaIconsRow(
                        imgUrl: 'assets/images/google3.png',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SocialMediaIconsRow(
                        imgUrl: 'assets/images/fb.png',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SocialMediaIconsRow(
                        imgUrl: 'assets/images/appl_img.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.015.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'If you dont have account',
                      style: AppTextstyles.simpleGreyText()
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: AppTextstyles.simpleRedText(),
                        ))
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
               
              ],
            ),
          ),
        )),
      ),
    );
  }
}
