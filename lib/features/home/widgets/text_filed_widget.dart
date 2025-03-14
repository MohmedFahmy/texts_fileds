import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFiledWidget extends StatelessWidget {
  TextFiledWidget(
      {super.key,
      required this.myControler,
      required this.myLabel,
      required this.myIconData,
      required this.myKeyboard});
  TextEditingController? myControler;
  String myLabel;
  IconData myIconData;
  TextInputType myKeyboard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: myKeyboard,
        controller: myControler,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            label: Text(myLabel),
            prefixIcon: Icon(myIconData),
            hintText: 'Enter $myLabel',
            suffix: Icon(Icons.delete)),
      ),
    );
  }
}
