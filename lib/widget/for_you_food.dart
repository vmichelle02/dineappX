import 'package:flutter/material.dart';

class ForYouFood extends StatelessWidget{

  final String fCategoryName;
  final String fImagePath;
  //final int numberOfItems;

  ForYouFood({this.fCategoryName, this.fImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.0, top:1.0),
        child: Card(
          color: Color(0xffFCE8E6),
          // child: Padding(
          //   padding: const EdgeInsets.all(5.0),
          child: Row(
              children: <Widget>[
                Column(
                  children: [
                    Image(
                      image: AssetImage(fImagePath),
                      height: 191.0,
                      width: 125.0,
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

    );

  }

}