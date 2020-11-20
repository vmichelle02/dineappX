import 'package:dineapp/pages/login.dart';
import 'package:dineapp/pages/menu.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: new Stack(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff000000),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/locationbg.PNG'
                                ),
                                fit: BoxFit.cover,
                                //colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
                            ),
                        ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Align(
                            alignment: Alignment(-0, -0.84),
                            //alignment: Alignment.topCenter,
                            child: Image.asset(
                                "assets/logo.PNG",
                                cacheWidth: 287,
                                cacheHeight: 95,
                            ),
                        ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Align(
                            alignment: Alignment(0, 0.1),
                            //alignment: Alignment.topCenter,
                            child: Text(
                                "Select Your Location",
                                style: TextStyle(
                                    fontSize:35,
                                    color: Colors.black,
                                    fontFamily: "Teko",
                                ),
                            ),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 50.0, top: 50.0),
                        child: Align(
                            alignment: Alignment(6, -0.0),
                        ),
                    ),

                    Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(240.0),
                                    child: Align(
                                        alignment: Alignment(6, 1),
                                    ),
                                ),
                                TextFormField(
                                    decoration: new InputDecoration(
                                        labelText: "Address",
                                        labelStyle: TextStyle(
                                            fontSize: 20,
                                        ),
                                        filled: true,
                                        fillColor: Color(0xffF6D7D7),
                                        border: new OutlineInputBorder(
                                            borderRadius: new BorderRadius.circular(20.0),
                                            borderSide: new BorderSide(
                                                color: Color(0xffF6D7D7),
                                            ),
                                        ),
                                        //fillColor: Color(0xffF6D7D7),
                                    ),
                                    validator: (val) {
                                        if(val.length==0) {
                                            return "Email cannot be empty";
                                        }else{
                                            return null;
                                        }
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    style: new TextStyle(
                                        fontFamily: "Poppins",
                                    ),
                                ),
                                new SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 60),
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
                                                "Select Location",
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

                    Align(
                        alignment: Alignment(0, 0.7),
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
                                    MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                            },
                            child: Text(
                                "Back",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Arial",
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


