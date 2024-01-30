import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,

        //get user input
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add new task"),
          ),
        ),

        //button -> save + cancel
      ),
    );
  }
}
