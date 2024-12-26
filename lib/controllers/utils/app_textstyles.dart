import 'package:flutter/material.dart';


import 'app_colors.dart';

class AppTextstyles {
  static TextStyle simpleTextBold() {
    return TextStyle(color: AppColors.whiteColor, fontSize: 18, fontWeight: FontWeight.bold);
  }

  static TextStyle simpleText() {
    return TextStyle(
      color: AppColors.whiteColor,
      fontSize: 14,
    );
  }
  static TextStyle simpleGreyText() { 
    return TextStyle(
      color: AppColors.greyColor,
      fontSize: 16,
    );
  }
  static TextStyle BoldBlackText() { 
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: 22,
     fontWeight: FontWeight.w500
    );
  }
  static TextStyle simpleRedText() {
    return TextStyle(
      color: AppColors.buttonColor,
      fontSize: 18,
    );
  }
  static TextStyle SimpleBlackText() { 
    return TextStyle(
      color: AppColors.greyColor,
      fontSize: 14,
     fontWeight: FontWeight.w500
    );
  }
  static TextStyle FullBlackBoldText() { 
    return TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: AppColors.fullBlackColor);
  }
}
