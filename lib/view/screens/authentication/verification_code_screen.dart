import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/utils/app_colors.dart';


import '../../../controllers/getxControllers/otp_verifi_cpntroller.dart';
import '../../widgets/arrow_back_button.dart';
import '../../widgets/custom_button.dart';

class VerificationCodeScreen extends StatelessWidget {
  VerificationCodeScreen({super.key});

  final VerificationController controller = Get.put(VerificationController());

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              ArrowBackButton(backgroundColor: Colors.black.withOpacity(0.07)),
              SizedBox(height: mediaQuerySize.height * 0.06),
              Center(
                child: Text(
                  'Verification Code',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: mediaQuerySize.height * 0.02),
              Text(
                'Enter your Email Address to receive ',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: mediaQuerySize.height * 0.01),
              Text(
                'email address.',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: mediaQuerySize.height * 0.03),
              OtpTextField(
  borderRadius: BorderRadius.circular(15),
  numberOfFields: 4,
  fieldWidth: 55,
  borderColor: const Color(0xFF512DA8),
  focusedBorderColor: AppColors.buttonColor,
  cursorColor: Colors.blue,
  showFieldAsBox: true,
  margin: const EdgeInsets.symmetric(horizontal: 12), // Increase horizontal spacing
  onCodeChanged: (String code) {
    // Handle changes if needed
  },
  onSubmit: (String verificationCode) {
    // Trigger when all fields are filled
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => SuccessScreen(otp: verificationCode),
    //   ),
    // );
  },
)
,
              SizedBox(height: mediaQuerySize.height * 0.04),
              CustomButton(
                  width: mediaQuerySize.width * 0.7.w,
                  name: 'Confirm',
                  onTap: (){},
                
                ),
              
              SizedBox(height: mediaQuerySize.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
  