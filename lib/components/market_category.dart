import 'package:flutter/material.dart';

class MarketCategory extends StatelessWidget {
  IconData icon;
  String title;
  bool isSelected;

  MarketCategory({required this.icon,required this.title,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width:65,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isSelected?Colors.green:Colors.white
              ),
              child: Icon(icon,color:isSelected?Colors.white:Colors.black,size: 30,),

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 3,
                vertical: 8
            ),
            child: Text(title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
