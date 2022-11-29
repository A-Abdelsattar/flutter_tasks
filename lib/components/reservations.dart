import 'package:flutter/material.dart';


class Reservation extends StatelessWidget {

  String name;
  String time;
  Reservation({required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,style:
        TextStyle(
            color: Colors.grey[400],
            fontSize: 18,
            fontWeight: FontWeight.bold,

        ),),
        Row(
          children: [
            Icon(Icons.access_alarm,color: Colors.grey[400]),
            Text(time,style: TextStyle(
                color: Colors.grey[400]
            ),)
          ],
        ),
        Divider(
          color: Colors.grey[400],
          thickness: 1,
          indent: 0,
          endIndent: 0,
        ),
      ],
    );
  }
}
