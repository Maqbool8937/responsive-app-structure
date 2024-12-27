import 'package:flutter/material.dart';


import '../../controllers/utils/colors.dart';
import '../../controllers/utils/image_constant.dart';

buildAppBar(String title) {
  return AppBar(
    leading: Image.asset(ImageConstant.userIcon),
    actions: [
      Container(
          margin: EdgeInsets.only(right: 10),
          child: Image.asset(ImageConstant.menuIcon)),
    ],
    centerTitle: true,
    title: Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.primaryColor),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}

buildCommonTextField(String hint, {String? label}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              label,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            filled: true, // Enables the background color
            fillColor: Colors.grey[200], // Light gray background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
              borderSide: BorderSide.none, // Removes the border
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ), // Adjusts padding inside the text field
          ),
        ),
      ],
    ),
  );
}
