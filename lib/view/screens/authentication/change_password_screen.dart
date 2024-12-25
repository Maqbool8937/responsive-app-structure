


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/getxControllers/password_controller.dart';
import 'package:stock_calculation_app/view/screens/authentication/login_screen.dart';
import 'package:stock_calculation_app/view/widgets/customField.dart';

import '../../widgets/custom_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  
  ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  final PasswordController passwordController = PasswordController();
    final TextEditingController passwordFieldController = TextEditingController();

  @override
   Widget build(BuildContext context) {
    
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: SingleChildScrollView(
        child: Form(
          key:formKey ,
          child: Column(
            children: [
              SizedBox(height: mediaQuerySize.height*0.03.h,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/backButton.png',fit: BoxFit.cover,),
              CustomButton(name: 'Personal Information',width: mediaQuerySize.width*0.6.w,),
              Image.asset('assets/images/menu.png',fit: BoxFit.contain,)
            ],
           ),
           SizedBox(height: mediaQuerySize.height*0.2.h,),
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
          //  CustomField(
          //           text: 'Password',
          //           validator: (value) {
          //             if (value!.isEmpty) {
          //               return 'please enter your password';
          //             }
          //             return null;
          //           },
          //           isSuffixIcon: true,
          //           suffixIcon: Obx(
          //             () => IconButton(
          //               icon: Icon(
          //                 passwordController.isPasswordVisible.value ? Icons.lock_outline_sharp : Icons.lock_open,
          //               ),
          //               onPressed: passwordController.togglePasswordVisibility,
          //             ),
          //           ),
          //         ),
                  SizedBox(height: mediaQuerySize.height*0.03.h,),
                  CustomButton(
                    width: mediaQuerySize.width*0.9.w,
                  name: 'Change password',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                    //  Get.to(() => VerificationCodeScreen());
                    }
                  },
                ),
          
                 ], ),
        )
      )
      )
      )
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../widgets/customField.dart';

// class PasswordController extends GetxController {
//   var isPasswordVisible = false.obs;

//   void togglePasswordVisibility() {
//     isPasswordVisible.value = !isPasswordVisible.value;
//   }
// }

// class ChangePasswordScreen extends StatefulWidget {
//   @override
//   State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
// }

// class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
//   final PasswordController passwordController = PasswordController();



//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Change Password")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: formKey,
//           child: Column(
//             children: [

//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     // Handle password change
//                   }
//                 },
//                 child: Text("Change Password"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
