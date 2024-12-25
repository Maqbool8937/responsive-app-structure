import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';
import 'login_screen.dart';

class UpdatedPasswordScreen extends StatelessWidget {
  const UpdatedPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
        child: Column(
          children: [
            SizedBox(
              height: mediaQuerySize.height * 0.06.h,
            ),
            Center(
                child: Text(
              'Successfully',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff4D4D4D)),
            )),
            SizedBox(
              height: mediaQuerySize.height * 0.02.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Center(
                child: Text(
                  'Your password has been updated, please change your password regularly to avoid this happening ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: mediaQuerySize.height * 0.03.h,
            ),
            CustomButton(
              onTap: () {
                Get.to(() => LoginScreen());
              },
              name: 'Back To Profile',
              width: mediaQuerySize.width * 0.9,
            ),
            SizedBox(
              height: mediaQuerySize.height * 0.03.h,
            ),
            
          ],
        ),
      )),
    );
  }
}
