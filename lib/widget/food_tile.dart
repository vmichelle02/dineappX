import 'package:dineapp/models/food_items.dart';
import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget{

  final FoodItems foodItem;
  const FoodTile ({Key key, this.foodItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 10,
           // shape: RoundedRectangleBorder(
           //   borderRadius: BorderRadius.circular(40)
           // ),
          child: Container(
             width: double.infinity,
             height: 100,
             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(foodItem.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                Text('\$${foodItem.price}'),
              ],
            ),
          ),

         ),
         Positioned(
          right: -5,
           top: 3,
          child:Image.asset(
             foodItem.imagePath,
             height:151,
             width:120,
           ),
         ),
     ],
     );
  //
  }

}