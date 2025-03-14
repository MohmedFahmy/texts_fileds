import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFiledWidget extends StatelessWidget {
  TextFormFiledWidget(
      {super.key,
      required this.myLabel,
      required this.myIconData,
      required this.validationError,
      required this.myKeyboard});

  String myLabel;
  IconData myIconData;
  String validationError;
  TextInputType myKeyboard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        keyboardType: myKeyboard,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          ),
          label: Text(myLabel),
          prefixIcon: Icon(myIconData),
          hintText: 'Enter $myLabel',
          suffix: Icon(Icons.delete),
        ),
        validator: (value) {
          if (value == null || value.length < 8) {
            return validationError;
          }
          return null;
        },
      ),
    );
  }
}
