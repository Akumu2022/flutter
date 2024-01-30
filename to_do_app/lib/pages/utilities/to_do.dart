// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDoList extends StatelessWidget {
  final String taskName;

  final bool taskCompleted;

  Function(bool?)? onChanged;

  ToDoList(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
// check box
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
            ),

// task name
            Text(
              taskName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.grey[500], borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
