import 'package:flutter/material.dart';
import 'package:taskbunny/util/dialogbox.dart';
import 'package:taskbunny/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of todo tasks
  List toDoList = [
    ["bake a cake", false],
    ["Do Exercise", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask () {
    showDialog(context: context,
      builder: (context) {
          return const DialogBox();


      },
    );  
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text("TaskBunny"),
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (createNewTask),
        child:Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0], // Corrected to use the right index
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index), // Corrected callback
          );
        },
      ),
    );
  }
}
