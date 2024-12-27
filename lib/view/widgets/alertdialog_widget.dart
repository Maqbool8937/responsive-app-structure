import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Example'),
      ),
      body: const Center(
        child: Text('Press the Floating Action Button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showPopupMenu(context);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {  
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 260,left: 140),
          child: AlertDialog(
            alignment: Alignment.centerRight, // Align the dialog content to the right
            actionsOverflowAlignment: OverflowBarAlignment.start, // Align actions in the center
            actionsAlignment: MainAxisAlignment.start, // Align actions to the start
            backgroundColor: Colors.white, // Set background color of the dialog
            clipBehavior: Clip.hardEdge, // Clip the dialog content to avoid overflow
            actionsOverflowDirection: VerticalDirection.down, // Direction for overflowing actions
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.red), // Set border color for the dialog
              borderRadius: BorderRadius.circular(15), // Set rounded corners for the dialog
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  child: Icon(Icons.note_add),),
               SizedBox(height: 10),
                ElevatedButton(
                  onPressed: (){},
                  child: Icon(Icons.share),),
              ],
            ),
          ),
        );
      },
    );
  }
}
