import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;



  MyButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: 125,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      child: Center(
        child: Text(title,style:
        TextStyle(
            fontSize: 15,
            color: Colors.white
        ),),
      ),
    );
  }
}
