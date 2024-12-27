import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/utils/app_textstyles.dart';
import 'package:stock_calculation_app/view/screens/authentication/signup_screen.dart';
import 'package:stock_calculation_app/view/widgets/custom_button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.01.w, vertical: mediaQuerySize.height * 0.01.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Select Your Role', style: AppTextstyles.BoldBlackText())),
            SizedBox(
              height: mediaQuerySize.height * 0.03.h,
            ),
            CustomButton(
              name: 'Admin',
              onTap: () {
                Get.to(() => SignupScreen(
                      isAdmin: true,
                    ));
              },
            ),
            SizedBox(
              height: mediaQuerySize.height * 0.02.h,
            ),
            CustomButton(
              name: 'Shortfiler',
              onTap: () {
                Get.to(() => SignupScreen(
                      isAdmin: false,
                    ));
              },
            )
          ],
        ),
      )),
    );
  }
}
