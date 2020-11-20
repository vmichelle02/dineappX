import 'package:dineapp/pages/cart.dart';
import 'package:flutter/material.dart';


class MenuHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 350,
      child: ListView(
        children: <Widget>[
          Stack(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment(-1, -0.90),
                  //alignment: Alignment.topCenter,
                  child: Image.asset("assets/dineXlogoBlack.png",
                    cacheWidth: 135,
                    cacheHeight: 53,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment(0.75, -0.90),
                  child: IconButton(
                    icon: Icon(Icons.location_on), onPressed: (){
                  },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment(1, -0.90),
                  child: IconButton(
                    icon: Icon(Icons.add_shopping_cart_rounded), onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()),
                    );
                  },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }

}