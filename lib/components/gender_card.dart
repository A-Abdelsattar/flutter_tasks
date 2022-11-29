import 'package:flutter/material.dart';



class GenderCard extends StatelessWidget {
  String image;
  String title;
  final function;

  GenderCard({required this.image,required this.title,required this.function});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(image),
              ),
              Text(title,style:const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
