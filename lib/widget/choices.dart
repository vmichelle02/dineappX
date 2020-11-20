import 'package:flutter/material.dart';

class Choices extends StatelessWidget{

  final String cCategoryName;
  final String cImagePath;

  Choices({this.cCategoryName, this.cImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.0, top:1.0),
        child: Card(
          color: Color(0xffF8AFA6),
          // child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
              children: <Widget>[
                Column(
                  children: [
                    Image(
                      image: AssetImage(cImagePath),
                      height: 191.0,
                      width: 125.0,
                    ),
                    // Container(
                    //   child: Text(cCategoryName),
                    //   ),
                  ],
                ),
                // Column(
                //   children: <Widget>[

              ]
          ),
        )
      // ]
      // )
    );


  }

}