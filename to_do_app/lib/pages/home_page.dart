// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do_app/pages/utilities/to_do.dart';

import 'utilities/dialogbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List to_do_List = [
    ["Make Tutorial", false],
    ["Code", false]
  ];

  void CheckBoxChanged(bool? value, int index) {
    setState(() {
      to_do_List[index][1] = !to_do_List[index][1];
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Center(child: Text("WELCOME TO DO")),
        backgroundColor: Colors.grey[500],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(
          Icons.add,
        ),
      ),
      body: ListView.builder(
        itemCount: to_do_List.length,
        itemBuilder: (context, index) {
          return ToDoList(
            taskName: to_do_List[index][0],
            taskCompleted: to_do_List[index][1],
            onChanged: (value) => CheckBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
