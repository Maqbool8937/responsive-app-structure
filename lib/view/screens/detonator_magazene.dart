import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_calculation_app/controllers/utils/app_colors.dart';
import 'package:stock_calculation_app/controllers/utils/app_textstyles.dart';
import 'package:stock_calculation_app/view/widgets/custom_button.dart';

import '../widgets/common_stack_box.dart';

class DetonatorMagazene extends StatelessWidget {
  const DetonatorMagazene({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.02.w, vertical: mediaQuerySize.height * 0.03.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/backButton.png',
                      fit: BoxFit.cover,
                    ),
                    CustomButton(
                      name: 'Magazine',
                      width: mediaQuerySize.width * 0.4.w,
                    ),
                    Image.asset(
                      'assets/images/menu.png',
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.1.h,
                ),
                Container(
                  height: mediaQuerySize.height * 0.07.h,
                  width: mediaQuerySize.width * 0.88.w,
                  decoration: BoxDecoration(color: AppColors.buttonColor, borderRadius: BorderRadius.circular(mediaQuerySize.width * 0.03.w)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.01.w, vertical: mediaQuerySize.height * 0.01.h),
                    child: Center(
                        child: Text(
                      'Detonator Magazine',
                      style: AppTextstyles.simpleTextBold(),
                    )),
                  ),
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Container(
                  height: mediaQuerySize.height * 0.41.h,
                  width: mediaQuerySize.width * 0.85.w,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(mediaQuerySize.width * 0.03.w), boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 0, offset: Offset(0, 2))]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mediaQuerySize.height * 0.03.h,
                      ),
                      Container(
                          height: mediaQuerySize.height * 0.04.h,
                          width: mediaQuerySize.width * 0.4.w,
                          decoration: BoxDecoration(color: AppColors.buttonColor, borderRadius: BorderRadius.circular(mediaQuerySize.width * 0.03.w)),
                          child: Center(
                              child: Text(
                            'All are Stack of 6',
                            style: AppTextstyles.simpleText(),
                          ))),
                      SizedBox(
                        height: mediaQuerySize.height * 0.02.h,
                      ),
                      CommonStackBox(
                        text: '18m: 52 units/box',
                        width: mediaQuerySize.width * 0.4.w,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.01.h,
                      ),
                      CommonStackBox(
                        text: '24m: 40 units/box',
                        width: mediaQuerySize.width * 0.4.w,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.01.h,
                      ),
                      CommonStackBox(
                        text: '37m: 24 units/box',
                        width: mediaQuerySize.width * 0.4.w,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.01.h,
                      ),
                      CommonStackBox(
                        text: '46m: 20 units/box',
                        width: mediaQuerySize.width * 0.4.w,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.01.h,
                      ),
                      CommonStackBox(
                        text: '55m: 16 units/box',
                        width: mediaQuerySize.width * 0.4.w,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.01.h,
                      ),
                      CommonStackBox(
                        text: '75m: 16 units/box',
                        width: mediaQuerySize.width * 0.4.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.03.h,
                ),
                Container(
                  height: mediaQuerySize.height * 0.06.h,
                  width: mediaQuerySize.width * 0.9.w,
                  decoration: BoxDecoration(

                      //color: Colors.red,
                      border: Border.all(color: AppColors.buttonColor),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(onPressed: () {}, child: Text('Edit data', style: AppTextstyles.simpleRedText())),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: AppColors.buttonColor,
        shape: CircleBorder(), // Ensures a circular shape
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
