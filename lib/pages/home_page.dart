import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:taskbunny/data/database.dart';
import 'package:taskbunny/util/dialogbox.dart';
import 'package:taskbunny/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //referencing the hive box
  final _myBox = Hive.openBox('mybox');
  ToDoDataBase db = ToDoDataBase(); 
  //instantiation of database


  final _controller = TextEditingController();

  // List of todo tasks
  /*List toDoList = [
    ["bake a cake", false],
    ["Do Exercise", false],
  ];
*/
  // Checkbox is tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
  }

  // Save new task
  void saveNewTask() {
    setState(() {
     db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // Create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // Delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
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
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0], // Get the task name from the list
            taskCompleted: db.toDoList[index][1], // Get the task completion status from the list
            onChanged: (value) => checkBoxChanged(value, index), // Callback when checkbox is tapped
            deleteFunction: (context) => deleteTask(index), // Callback to delete the task, passing the index
          );
        },
      ),
    );
  }
}
   
