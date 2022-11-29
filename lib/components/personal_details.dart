import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  String text;
  IconData icon;

  PersonalDetails({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: Row(
        children: [
          Icon(icon,color: Colors.grey[400],size: 30,),
          SizedBox(width: 10,),
          Text(text,style:
          TextStyle(
              color: Colors.grey[400],
              fontSize: 18
          ),)
        ],
      ),
    );
  }
}
