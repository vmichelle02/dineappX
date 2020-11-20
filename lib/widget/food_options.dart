import 'package:flutter/material.dart';

class FoodOptions extends StatelessWidget{

  final String categoryName;
  final String imagePath;
  //final int numberOfItems;

  FoodOptions({this.categoryName, this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top:10.0),
      child: Card(
          color: Color(0xffF8AFA6),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
                children: <Widget>[
                  Column(
                    children: [
                      Image(
                        image: AssetImage(imagePath),
                        height: 55.0,
                        width: 45.0,
                      ),
                      Container(
                        child: Text(categoryName),
                      ),
                    ],
                  ),
                  // Column(
                  //   children: <Widget>[

                ]
            ),
          )
        // ]
        // )
      ),
    );

  }

}