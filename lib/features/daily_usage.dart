import 'package:flutter/material.dart';
import 'package:stock_calculation_app/utils/colors.dart';
import 'package:stock_calculation_app/widgets/common_widgets.dart';

class DailyUsage extends StatelessWidget {
  const DailyUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar("Daily Usage"),
            body: Container(
              margin: EdgeInsets.all(10),
              child: ListView(
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCommonTextField("Enter the required units", label: "Required Units"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Calculate",
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 6,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.primaryColor),
                            child: Center(
                              child: Text(
                                "Daily Usage",
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          Text(
                            "Take out 3 boxes and 44 units",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Stock Update",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCommonTextField("Enter the of unused units", label: "Unused Units"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Update Stock",
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 6,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4019 Units",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.primaryColor),
                            child: Text(
                              "Remaining Stock",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(border: Border.all(width: 1, color: AppColor.primaryColor), color: Colors.white, borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Delete",
                                style: TextStyle(color: AppColor.primaryColor, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Save Report",
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
