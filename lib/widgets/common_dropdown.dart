import 'package:flutter/material.dart';

class DropdownInCard extends StatefulWidget {
  final List<String> items;
  final String hintText;

  const DropdownInCard({
    Key? key,
    required this.items,
    required this.hintText,
  }) : super(key: key);

  @override
  _DropdownInCardState createState() => _DropdownInCardState();
}

class _DropdownInCardState extends State<DropdownInCard> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButtonFormField<String>(
              value: selectedItem,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              icon: Icon(Icons.keyboard_arrow_down), // Change the dropdown icon

              hint: Text(
                widget.hintText,
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
    );
  }
}
