import "package:flutter/material.dart";

class Dialogbox extends StatelessWidget {
  const Dialogbox ({super.key});

 @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[200],
      content: Container(
         height:120,
         child:   Column(children: [
          //GETTING USER INPUT
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),

          //BUTTONS : save button and cancel button

          ],
          )

         ),

    );
  }
}