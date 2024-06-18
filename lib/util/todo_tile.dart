import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  ToDoTile({
  super.key,
  required this.taskName, 
  required this.taskCompleted,
  required this.onChanged,
  });
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25, top:25),
      child: Container(
        padding: EdgeInsets.all(28),
        child: Row
        (children: [
          //checkbox
          Checkbox(value: taskCompleted, onChanged: onChanged),
          //taskname
          Text(taskName),
        ],
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple[50],
          borderRadius: BorderRadius.circular(12),
          ),
      ),
    );
  }
}
