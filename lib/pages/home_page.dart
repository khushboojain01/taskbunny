import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskbunny/util/dialogbox.dart';
import 'package:taskbunny/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  //Text controller
  final _controller = TextEditingController();

  // List of todo tasks
  List toDoList = [
    ["bake a cake", false],
    ["Do Exercise", false],
  ];

//checkbox is tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //Save new task
  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
}

  
//create a new taskk
  void createNewTask () {
    showDialog(context: context,
      builder: (context) {
          return DialogBox(
            controller: _controller ,
            onSave: saveNewTask,
            onCancel: () =>Navigator.of(context).pop(),
          );


      },
    );  
  }

 //delete task
 void deleteTask (int index) {
  setState(() {
    toDoList.removeAt(index);
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
            deleteFunction: (context) => deleteTask ,
            
          );
        },
      ),
    );
  }
}
