import 'package:flutter/material.dart';
import 'package:taskbunny/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller; 
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[200],
      content: Container(
        height: 120,
        child: Column(
          children: [
            // Getting user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add A New Task',
              ),
            ),
            // Buttons: save button and cancel button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button (create a separate file for every detail)
                  MyButton(
                    text:"Save", 
                  onPressed: onSave),

                  const SizedBox(width: 54),

                // Cancel button
                MyButton(
                    text:"Cancel", 
                  onPressed:onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
