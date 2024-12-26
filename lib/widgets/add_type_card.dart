import 'package:flutter/material.dart';
import 'package:stock_calculation_app/utils/colors.dart';

class AddTypeCard extends StatefulWidget {
  final List<String> items;
  final String hintText;

  const AddTypeCard({
    Key? key,
    required this.items,
    required this.hintText,
  }) : super(key: key);

  @override
  _AddTypeCardState createState() => _AddTypeCardState();
}

class _AddTypeCardState extends State<AddTypeCard> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.hintText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Card(
              color: const Color.fromARGB(255, 234, 235, 236),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButtonFormField<String>(
                      value: selectedItem,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      icon: Icon(Icons
                          .keyboard_arrow_down), // Change the dropdown icon

                      hint: Text(
                        "Select Type",
                        style: TextStyle(color: Colors.black),
                      ),
                      items: widget.items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedItem = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "Add Items",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
