import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'view/screens/Reports_screen.dart';
import 'view/screens/authentication/change_password_fromlink.dart';
import 'view/screens/authentication/change_password_screen.dart';
import 'view/screens/authentication/forgot_password_screen.dart';
import 'view/screens/authentication/login_screen.dart';
import 'view/screens/authentication/register_successfull.dart';

import 'view/screens/authentication/signUp.dart';
import 'view/screens/authentication/signup_screen.dart';
import 'view/screens/authentication/successfully_reset_password.dart';
import 'view/screens/authentication/updated_password_screen.dart';
import 'view/screens/authentication/verification_code_screen.dart';
import 'view/screens/booster_magazene.dart';
import 'view/screens/detonator_magazene.dart';
import 'view/screens/edit_profile_screens/edit_profile_one.dart';
import 'view/screens/edit_profile_screens/edit_profile_two.dart';
import 'view/screens/gallery_screen.dart';
import 'view/screens/image_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return ScreenUtilInit(
      designSize: Size(mediaQuerySize.width, mediaQuerySize.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false, home: EditProfileOne()),
    );
  }
}
