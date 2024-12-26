import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_calculation_app/controllers/utils/app_colors.dart';
import 'package:stock_calculation_app/view/widgets/customField.dart';
import 'package:stock_calculation_app/view/widgets/custom_button.dart';

import '../widgets/reports_card_widget.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQuerySize.height*0.03.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/edit_icon.png',fit: BoxFit.cover,),
            CustomButton(name: 'Reports',width: mediaQuerySize.width*0.4.w,),
            Image.asset('assets/images/menu.png',fit: BoxFit.contain,)
          ],
         ),
         SizedBox(height: mediaQuerySize.height*0.1.h,),
        Container(
          height: mediaQuerySize.height*0.08.h,
          width: mediaQuerySize.width*0.9.w,
          decoration: BoxDecoration(
            color: AppColors.buttonColor,borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Detonator Magazine',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                Container(
                  height: mediaQuerySize.height*0.12.h,
                  width: mediaQuerySize.width*0.12.w,
                  decoration: BoxDecoration(
            
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(onPressed: (){},
                   icon: Icon(Icons.arrow_forward,color: AppColors.buttonColor,)),
                ),
                
                
              ],
            ),
          ),
        ),
         SizedBox(height: mediaQuerySize.height*0.03.h,),
        Container(
          height: mediaQuerySize.height*0.08.h,
          width: mediaQuerySize.width*0.9.w,
          decoration: BoxDecoration(
            color: AppColors.buttonColor,borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Booster Magazine',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                Container(
                  height: mediaQuerySize.height*0.12.h,
                  width: mediaQuerySize.width*0.12.w,
                  decoration: BoxDecoration(
            
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(onPressed: (){},
                   icon: Icon(Icons.arrow_forward,color: AppColors.buttonColor,)),
                ),
                
                
              ],
            ),
          ),
        ),
         SizedBox(height: mediaQuerySize.height*0.03.h,),
         Container(
           height: mediaQuerySize.height*0.18.h,
                  width: mediaQuerySize.width*0.9.w,
                  decoration: BoxDecoration(
            
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 0,
                        offset: Offset(0, 2)

                      )
                    ]
                   
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: mediaQuerySize.height*0.03.h,),
                      Center(child: Text('4423 units',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
                      SizedBox(height: mediaQuerySize.height*0.01.h,),
                      Container(
                         height: mediaQuerySize.height*0.04.h,
                  width: mediaQuerySize.width*0.4.w,
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:Center(child: Text('Total Stock Count',style: TextStyle(color: Colors.white),))
                      )
                    ],
                  ),
         ),
         SizedBox(height: mediaQuerySize.height*0.03.h,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
              
                    ReportsCardWidget(title: 'Remaining Stock',content: '4423 units',),
                    SizedBox(width: mediaQuerySize.width*0.03.w,),
                   ReportsCardWidget(title: 'Det Cord',content: '4423 units',)
              ],
            ),
          ),
           SizedBox(height: mediaQuerySize.height*0.03.h,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
              
                    ReportsCardWidget(title: 'Weight',content: '50.35 Kg',),
                    SizedBox(width: mediaQuerySize.width*0.03.w,),
                   ReportsCardWidget(title: 'Locations',content: '10',)
              ],
            ),
          ),
           SizedBox(height: mediaQuerySize.height*0.03.h,),
           CustomButton(name: 'Save as PDF',width: mediaQuerySize.width*0.9.w,),
 SizedBox(height: mediaQuerySize.height*0.06.h,),
        
        
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