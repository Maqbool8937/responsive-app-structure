import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/utils/app_colors.dart';
import '../widgets/custom_button.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              SizedBox(height: mediaQuerySize.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/backButton.png', fit: BoxFit.cover),
                  CustomButton(
                    name: 'Saved Items',
                    width: mediaQuerySize.width * 0.4,
                  ),
                  Image.asset('assets/images/menu.png', fit: BoxFit.contain),
                ],
              ),
              SizedBox(height: mediaQuerySize.height * 0.06),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/arrow_down.png'),
                ),
              ),
              SizedBox(height: mediaQuerySize.height * 0.06),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, // 4 items per row
                      crossAxisSpacing: 8, // Spacing between items horizontally
                      mainAxisSpacing: 8, // Spacing between items vertically
                      childAspectRatio: mediaQuerySize.width*0.2.w /
                          (mediaQuerySize.height*0.1.h), // Adjust height for 6 rows
                    ),
                    itemCount: 24, // Total items (4 columns * 6 rows = 24)
                    itemBuilder: (context, index) {
                      return Container(
                          //  height: mediaQuerySize.height*0.15.h,
                          //  width: mediaQuerySize.width*0.3.w,
                        decoration: BoxDecoration(
                          color: Color(0xff959595),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Remaining', 
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
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



//  Container(
        //   height: mediaQuerySize.height*0.15.h,
        //   width: mediaQuerySize.width*0.3.w,
        //   decoration: BoxDecoration(
        //     color: Color(0xff959595),
        //     borderRadius: BorderRadius.circular(10)
        //   ),
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Text('Remaining')),
        //  )