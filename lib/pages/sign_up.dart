import 'package:dineapp/pages/cart.dart';
import 'package:dineapp/pages/location.dart';
import 'package:dineapp/pages/login.dart';
import 'package:dineapp/pages/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dineapp/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: new Stack(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 1000,
              decoration: BoxDecoration(
                color: const Color(0xff000000),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/pink.jpg'
                  ),
                  fit: BoxFit.fitHeight,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment(-0, -0.84),
                //alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/dineXlogoBlack.png",
                  cacheWidth: 287,
                  cacheHeight: 95,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment(0.65, 0),
                //alignment: Alignment.topCenter,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                    fontFamily: "Teko Bold",
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment(-1,1),
              child: Container(
                height:350,
                decoration: new BoxDecoration(
                color: Color(0xffF8AFA6),
                borderRadius: new BorderRadius.only(
                topLeft:  const  Radius.circular(40.0),
                topRight: const  Radius.circular(40.0))
                ),
              ),

            ),


                Padding(
                  padding: const EdgeInsets.only(top:500, left: 5, right:5),
                  child: Align(
                    alignment: Alignment(0,-1),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email/ Phone Number',
                      ),
                    ),
                  ),
                ),

                    Padding(
                      padding: const EdgeInsets.only(top:580, left: 5, right:5, bottom: 5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top:610, left: 5, right:5),
                      child: Align(
                        alignment: Alignment(0,-0.3),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
                          ),
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
                    "Submit",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Arial"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              //alignment: Alignment.topCenter,
              child: FlatButton(
                //color: Colors.blue,
                textColor: Colors.black,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                //splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: "Teko",
                  ),
                  //textAlign: TextAlign.right,
                ),
              ),
            ),
                  ],
                ),

            

    );
  }
}