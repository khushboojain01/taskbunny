import 'package:hive/hive.dart';

class ToDoDataBase{
  //reference the boxopen
  List toDoList = [];
  final _myBox = Hive.box('myBox');

  //if this is the first time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Drink Water",false],
      ["Pick up trash", false],
      //default values set so that user gets familiar using the app
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST"); //key todolist

  }

  //update the database
  void updateDataBase () {
    _myBox.put("TODOLIST", toDoList);
  }

}