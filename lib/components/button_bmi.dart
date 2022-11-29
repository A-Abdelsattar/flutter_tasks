import 'package:flutter/material.dart';

class ButtonBmi extends StatelessWidget {
  String title;
  Color color;
  final cText;
  final function;

  ButtonBmi(
      {required this.title,
      required this.color,
      required this.cText,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: GestureDetector(
        onTap: function,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15, color: cText ? Colors.grey[600] : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
