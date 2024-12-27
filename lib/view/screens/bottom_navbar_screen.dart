import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_calculation_app/controllers/utils/colors.dart';

import '../../controllers/getxControllers/bottom_navbar_controller.dart';
import '../../controllers/utils/app_colors.dart';
import 'Reports_screen.dart';
import 'features/daily_usage.dart';
import 'features/stock_count.dart';


// Controller for managing the bottom navigation state


class BottomNavbarScreen extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  // Screens for the bottom navigation bar
  final List<Widget> screens = [
   StockCount(),
    DailyUsage(),
    ReportsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screens[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
           
  selectedItemColor: AppColors.buttonColor,
  unselectedItemColor: Colors.grey,
  backgroundColor: Colors.white,
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.changeTab(index);
          },
          items: [
            BottomNavigationBarItem(
              
              icon: Icon(Icons.dashboard),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Usage',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.report),
              label: 'Reports',
            ),
          ],
        ),
      ),
    );
  }
}

