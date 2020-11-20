import 'package:dineapp/pages/discover.dart';
import 'package:dineapp/pages/faves.dart';
import 'package:dineapp/pages/payment_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dineapp/constants.dart';
import'package:dineapp/pages/menu.dart';

class CartScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50,
      child: Scaffold(
        appBar: AppBar(
          title: appLogo,
          elevation: 0.0,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuScreen()),
              );
            },
          ),


        ),


          body: Stack(
              //alignment: Alignment(0,0),
                children: [
                  Container(
                    color: Color(0xffF6D7D7),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 125.0),
                    child: Container(
                     // height: 500,
                      //width: double.infinity,
                      color: Color(0xffF6D7D7),
                      //margin :EdgeInsets.symmetric(vertical: 8),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          // SizedBox(
                          //     height: 12.0
                          // ),
                          CartItem(),
                          CartItem(),
                          CartItem(),
                          SizedBox(height: 17.0),
                           Padding(
                             padding: const EdgeInsets.only(left:7.0, right: 7.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                          //
                          //     Expanded(
                                  Text("Total:", style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                   ),
                                   ),
                          //     ),
                                  Text("RM: ", style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                  ),
                                   ),

                               ],
                             ),
                           ),
                          Divider(),
                          SizedBox(height: 4.0),
                           Padding(
                             padding: const EdgeInsets.only(left:7.0, right: 7.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                          //     Expanded(
                                   Text("Delivery Fee:", style: TextStyle(
                                 fontSize: 16,
                                 ),
                                 ),
                          //     ),
                          //     Expanded(
                                 Text("RM:2.00 ", style: TextStyle(

                                  fontSize: 16,
                                ),
                                 ),

                               ],
                          ),
                           ),

                          Divider(),
                           Padding(
                             padding: const EdgeInsets.only(left:7.0, right: 7.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                          //     Expanded(
                          Text("SubTotal", style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                 ),
                                 ),
                          //     ),
                          //     Expanded(
                          Text("RM: ", style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                ),
                                 ),
                      ],
                                 ),
                           ),
                          //     //Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Align(
                              alignment: Alignment(0,1),
                              //alignment: Alignment.topCenter,
                              child: RaisedButton(
                                padding: const EdgeInsets.all(10.0),
                                textColor: Colors.white,
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PaymentMethodScreen()),
                                  );
                                },
                                child: new Text(
                                  "CHECKOUT",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: "Arial"),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                             // SizedBox(
                                //height: 18.0,
                            //  )
                            ],
                          ),

                      ),




                    ),



                  CustomPaint(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  painter: HeaderCurvedContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Padding(
                      padding: EdgeInsets.all(7),
                      child: Align(
                        alignment: Alignment(0,0),
                        child: Text("My Cart",
                          style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Teko",
                          ),
                        ),
                      ),
                    ),

                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.white, width: 5),
                    //     shape: BoxShape.circle,
                    //     color: Colors.white,
                    // image: DecorationImage(
                    //   fit: BoxFit.fill,
                    //   image: AssetImage(
                    //       'assets/user.png'
                    //   ),
                    // )



                  ],

                ),


              ]
        ),
          ),


    );

  }


}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(vertical:4.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),

                ),

                child: Center(
                  child: Container(
                    width: 60.0,
                    height:60.0,
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/cheeseBurger.png')
                        ),

                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                width: 12.0
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Align(
                    alignment: Alignment(-1,0),
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Container(
                        width: 100.0,
                        child: Text("Cheese Burger",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Column(
                        children:[
                          Text("RM: ", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                            color: Colors.white,
                        ),
                        ),
      ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: <Widget>[

                           Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: Color(0xffF8AFA6),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                            child: Icon(Icons.add,
                            color: Colors.black,
                            size: 15.0,
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:8.0
                          ),
                          child: Text("1",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                           ),




                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Color(0xffF8AFA6),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Icon(Icons.remove,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color=Colors.black;
    Path path=Path()..relativeLineTo(0, 10)
      ..quadraticBezierTo(size.width/2, 125, size.width, 125)
      ..relativeLineTo(0, -170)
      ..close();
    canvas.drawPath(path, paint);
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

