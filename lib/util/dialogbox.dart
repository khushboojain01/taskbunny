import 'package:flutter/material.dart';
import 'package:taskbunny/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

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
                  onPressed: () {}),

                  const SizedBox(width: 54),

                // Cancel button
                MyButton(
                    text:"Cancel", 
                  onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
