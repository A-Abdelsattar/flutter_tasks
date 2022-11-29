import 'package:flutter/material.dart';

import '../models/item.dart';


class MarketItem extends StatefulWidget {
  final Item item;
  final function;

  MarketItem({required this.item, this.function});

  @override
  State<MarketItem> createState() => _MarketItemState();
}

class _MarketItemState extends State<MarketItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(10),
      child: Container(

        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
             Padding(
              padding: EdgeInsets.all(10.0),
              child:  Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.item.favorite=!widget.item.favorite;
                    });
                  },
                  child: Icon(Icons.favorite,
                    color:widget.item.favorite? Colors.red:Colors.grey,),
                ),
              ),
            ),
            Image.network(widget.item.image,
              fit: BoxFit.fill,height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.item.name,style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(widget.item.country,style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('${widget.item.price} LE',style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green
                    ),),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: widget.function,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10)
                      ),
                      color: Colors.green
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Icon(Icons.add,size: 30,color: Colors.white,),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
