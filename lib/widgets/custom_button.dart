import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonTitle, this.myonTap});
  String buttonTitle;
  VoidCallback? myonTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myonTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity,
        height: 65.0,
        child: Center(
            child: Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
