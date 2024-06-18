import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title : Text("TaskBunny"),
        backgroundColor:Colors.deepPurple[200],
        elevation: 0,
        centerTitle: true,
      ),
      /*body: ListView(
        children: [
          ToDoList(),
        ],
      ),*/
    );
  }
}
