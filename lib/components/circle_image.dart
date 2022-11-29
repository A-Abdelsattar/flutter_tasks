import 'package:flutter/material.dart';


class CircleImage extends StatelessWidget {
  String image;


  CircleImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(image),
    );
  }
}
