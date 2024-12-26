import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: mediaQuerySize.width*0.08.w,vertical: mediaQuerySize.height*0.03.h),
          child: Stack(
            children: [
              // Long text at the bottom
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'This design ensures a clear flow for daily planning and end-of-day reconciliation of stock. Let me know if you’d like further refinements or a visual sketch!',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),

              // Centered image text
              Center(
                child: Text(
                  'image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              // Icon at the top-right corner
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.file_download_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
