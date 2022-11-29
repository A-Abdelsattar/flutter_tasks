import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/market_category.dart';
import 'package:flutter_tasks/components/market_item.dart';
import 'package:flutter_tasks/screens/task3/order_summary_screen.dart';

import '../../models/item.dart';
import '../../utils/app_navigator.dart';


class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  double total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.filter_list_sharp,color: Colors.grey,size: 30,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text('EDEKA',style:
            TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Icon(Icons.double_arrow_sharp,color: Colors.blue,),
          ),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5)
            ),
            child:Icon(Icons.favorite_border_outlined,color: Colors.red,)

          ),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              labelText: 'Search product here',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                MarketCategory(icon: Icons.bakery_dining_rounded, title: 'Bakery', isSelected: true),
                MarketCategory(icon: Icons.fastfood_outlined, title: 'Fruits', isSelected: false),
                MarketCategory(icon: Icons.no_food_outlined, title: 'Vegetables', isSelected: false),
                MarketCategory(icon: Icons.local_drink, title: 'Milk', isSelected: false),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 2),
              itemCount: marketItems.length,
              itemBuilder: (context,index)=>Column(
                children: [
                  MarketItem(item: marketItems[index],
                    function: (){
                      setState(() {
                        marketItems[index].counter++;
                        total+=marketItems[index].price;
                      });
                    },
                  ),
                  Text('Counter: ${marketItems[index].counter}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ],
              ),
            ),
          ),
          TextButton(onPressed: (){
            AppNavigator.appNavigator(context,false, OrderSummaryScreen(total: total));
          }, child: Text('Submit Order'))
        ],
      ),
    );
  }
}
