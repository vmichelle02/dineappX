import 'package:flutter/material.dart';

class otherPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Stack(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment(-0.4, -0.65),
              //alignment: Alignment.topCenter,
              child: Text(
                "blue,",
                style: TextStyle(
                  fontSize:16,
                  color: Colors.black,
                  fontFamily: "Playfair",
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment(-0.3, -0.60),
              //alignment: Alignment.topCenter,
              child: Text(
                "white",
                style: TextStyle(
                  fontSize:16,
                  color: Colors.black,
                  fontFamily: "Playfair",
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}

