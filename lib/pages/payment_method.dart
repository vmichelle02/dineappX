import 'package:dineapp/pages/cart.dart';
import 'package:dineapp/pages/location.dart';
import 'package:dineapp/pages/login.dart';
import 'package:dineapp/pages/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dineapp/constants.dart';

class PaymentMethodScreen extends StatelessWidget{
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
                MaterialPageRoute(builder: (context) => CartScreen()),
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
                padding: const EdgeInsets.only(top: 90.0),
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

                        // SizedBox(height: 17.0),

                        Padding(
                          padding: const EdgeInsets.only(top:0),
                          child: Align(
                            alignment: Alignment(0.0, 0),
                            //alignment: Alignment.topCenter,
                            child: Text(
                              "Summary",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.black,
                                fontFamily: "Teko Bold",
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment(0,0),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              width: 260.0,
                              height: 55.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [
                                    Align(
                                      alignment: Alignment(1,1),
                                      child: Padding(
                                          padding: const EdgeInsets.only(top:2.0),
                                          child: Column(
                                            children:[
                                              Text("McDonalds", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                              ),
                                              Align(
                                                alignment: Alignment(0,0),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 2.0),
                                                  child: Column(
                                                    children: [
                                                      Text("RM : ", style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                      ),
                                                      ),
                                                    ],

                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                      ),
                                    ),




                                  ]


                              ),
                            ),

                          ),
                        ),
                        Align(
                          alignment: Alignment(0,0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Text(
                                  "Payment Method",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.black,
                                    fontFamily: "Teko Bold",
                                  ),
                                ),
                              ],

                            ),
                          ),
                        ),



                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment(0,5),
                                  //alignment: Alignment.topCenter,
                                  child: RaisedButton(
                                    padding: const EdgeInsets.all(10.0),
                                    textColor: Colors.white,
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => MenuScreen()),
                                      );
                                    },
                                    child: new Text(
                                      "Cash",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: "Arial"),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment(0,5),
                                  //alignment: Alignment.topCenter,
                                  child: RaisedButton(
                                    padding: const EdgeInsets.all(10.0),
                                    textColor: Colors.white,
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => MenuScreen()),
                                      );
                                    },
                                    child: new Text(
                                      "Credit Card",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: "Arial"),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Align(
                                  alignment: Alignment(0,5),
                                  //alignment: Alignment.topCenter,
                                  child: RaisedButton(
                                    padding: const EdgeInsets.all(10.0),
                                    textColor: Colors.white,
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LocationScreen()),
                                      );
                                    },
                                    child: new Text(
                                      "Online Banking",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: "Arial"),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),




                            ],
                          ),

                        ),

                        // Container(
                        //   child: Padding(
                        //       padding: const EdgeInsets.only(top:1, left: 10, bottom: 27),
                        //       child: Align(
                        //         alignment: Alignment(-0.95, -0.5),
                        //         //alignment: Alignment.topCenter,
                        //         child: Text(
                        //           "Name on Card",
                        //           style: TextStyle(
                        //             fontSize:17,
                        //             color: Colors.black,
                        //             //fontFamily: "Teko",
                        //           ),
                        //         ),
                        //
                        //       ),
                        //
                        //     ),
                        //     ),

                        Padding(
                          padding: const EdgeInsets.only(top:5, left: 5, right:5),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name on Card',
                            ),
                          ),
                        ),


                        // Container(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(left: 10, right:10, top:10, bottom:27),
                        //     child: Align(
                        //       alignment: Alignment(-0.95, -2),
                        //       //alignment: Alignment.topCenter,
                        //       child: Text(
                        //         "Card Number",
                        //         style: TextStyle(
                        //           fontSize:17,
                        //           color: Colors.black,
                        //           //fontFamily: "Teko",
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        Padding(
                          padding: const EdgeInsets.only(top:10, left: 5, right:5),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Card Number',
                            ),
                          ),
                        ),

                        // Container(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(left: 15, right:10,  bottom:27),
                        //     child: Row(
                        //       children: [
                        //         Align(
                        //           alignment: Alignment(-0.95, -3.5),
                        //           //alignment: Alignment.topCenter,
                        //           child: Text(
                        //             "Expiration Date",
                        //             style: TextStyle(
                        //               fontSize:17,
                        //               color: Colors.black,
                        //               //fontFamily: "Teko",
                        //             ),
                        //           ),
                        //         ),
                        Padding(
                          padding: const EdgeInsets.only(top:10, left: 5, right:5),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Expiration Date',
                            ),
                          ),
                        ),

                        // Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 90, right:10, top:17, bottom:27),
                        //       child: Align(
                        //         alignment: Alignment(-0.95, -3.5),
                        //         //alignment: Alignment.topCenter,
                        //         child: Text(
                        //           "CVV",
                        //           style: TextStyle(
                        //             fontSize:17,
                        //             color: Colors.black,
                        //             //fontFamily: "Teko",
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top:10, left: 5, right:5),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'CVV',
                            ),
                          ),
                        ),

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
                                  MaterialPageRoute(builder: (context) => MenuScreen()),
                                );
                              },
                              child: new Text(
                                "Confirm Payment",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "Arial"),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),


                        //       ],
                        //     ),
                        //   ),
                        // ),

                        // Container(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(left: 10, right:10, top:10, bottom:20),
                        //     child: Align(
                        //       alignment: Alignment(0.95, -3.5),
                        //       //alignment: Alignment.topCenter,
                        //       child: Text(
                        //         "CVV",
                        //         style: TextStyle(
                        //           fontSize:17,
                        //           color: Colors.black,
                        //           //fontFamily: "Teko",
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),

                      ]

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
                      child: Text("CheckOut",
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
                ],

              ),



            ]
        ),
      ),


    );

  }


}
class HeaderCurvedContainer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color=Colors.black;
    Path path=Path()..relativeLineTo(0, 135)
      ..quadraticBezierTo(size.width/2, 45, size.width, 45)
      ..relativeLineTo(0, -145)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

  }

}