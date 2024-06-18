import 'package:hive/hive.dart';

class ToDoDataBase{
  //reference the boxopen
  List toDoList = [];
  final _myBox = Hive.openBox('myBox');
}