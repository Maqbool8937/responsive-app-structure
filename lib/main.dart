import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/view/screens/authentication/signUp.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return ScreenUtilInit(
      designSize: Size(mediaQuerySize.width, mediaQuerySize.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(debugShowCheckedModeBanner: false, home: Signup()),
    );
  }
}
