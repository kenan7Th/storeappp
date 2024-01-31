import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({this.myhintext, this.myonChanged, this.inputType});
  bool islaoding = false;
  String? myhintext;
  TextInputType? inputType;
  Function(String)? myonChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      onChanged: myonChanged,
      decoration: InputDecoration(
        hintText: myhintext,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(8)),
        border: OutlineInputBorder(
            borderSide: BorderSide(), borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
