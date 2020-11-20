import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dineapp/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  getPages(BuildContext context) {
    var pages = [
      Container(
        //height: 150.0,
        //margin: new EdgeInsets.all(10.0)
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/intro.jpg'),
            fit: BoxFit.cover,
          ),
        ),

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
                  "THOUSAND FLAVOURS,",
                  style: TextStyle(
                    fontSize: 16,
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
                  "ONE PLACE",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: "Playfair",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                  alignment: Alignment(-0.8, -0.84),
                  //alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/dineXlogoBlack.png",
                    cacheWidth: 287,
                    cacheHeight: 95,
                  )),
            ),
            Positioned(
              left: 25,
              top: 270,
              child: Container(
                width: 190,
                //height: 90,
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.only(top: 24),
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0.56),
                    ),
                    // Image.asset('assets/intro1.jpg',
                    //fit: BoxFit.fitWidth),
                    Text(
                      "FRESH",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontFamily: "Teko",
                      ),
                    ),
                    Text(
                      "FOOD",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontFamily: "Teko",
                      ),
                    ),
                    Text(
                      "Serving you hot,",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Arial"),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "freshly prepared meals",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Arial"),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "from the kitchen.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Arial"),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                //alignment: Alignment.topCenter,
                child: RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: new Text(
                    "GET STARTED",
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

        //child: new Image.asset('assets/dineXlogoBlack.png',
        //cacheHeight: 95,
        //cacheWidth: 287,
        //alignment: Alignment(-0.8, -0.71),
        //fit: BoxFit.contain
        //),
      ),
      Container(
        //color: Color(0xff881E20),
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(
                'assets/red1.jpg',
              ),
              scale: 1,
              fit: BoxFit.fill,
            )),

        // height: 30.0,
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //Expanded(
            //flex: 3,
            //child:Container(color:Color(0xff881E20)),
            //),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment(-0.4, -0.65),
                //alignment: Alignment.topCenter,
                child: Text(
                  "THOUSAND FLAVOURS,",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
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
                  "ONE PLACE",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: "Playfair",
                  ),
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Align(
                    alignment: Alignment(-0.8, -0.84),
                    //alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/logo.PNG",
                      cacheWidth: 287,
                      cacheHeight: 95,
                    ))),

            Positioned(
              left: 25,
              top: 270,
              child: Container(
                width: 190,
                //height: 90,
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.only(top: 24),
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0.56),
                      // child: Text("Hi",
                      //  textAlign: TextAlign.left,
                      //  style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 24,
                      //   )
                      // ),
                    ),
                    // Image.asset('assets/intro1.jpg',
                    //fit: BoxFit.fitWidth),
                    Text(
                      "FAST",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: "Teko",
                      ),
                    ),
                    Text(
                      "DELIVERY",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: "Teko",
                      ),
                    ),
                    Text(
                      "Fast delivery to your desired",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: "Arial"),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "location and",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: "Arial"),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "always on time.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: "Arial"),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    //alignment: Alignment.topCenter,
                    child: RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: new Text(
                        "GET STARTED",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: "Arial"),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
      ),
    ];

    return pages;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          body: LiquidSwipe(
            pages: getPages(context),
            enableLoop: true,
            fullTransitionValue: 300,
            enableSlideIcon: true,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.black),
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.5,
          ),

        ),

      ),

    );

  }
}

class LandingPage extends StatelessWidget{
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          //if snapshot has error
          if(snapshot.hasError){
            return Scaffold(
                body: Center(
                  child: Text("Error: ${snapshot.error}"),
                )
            );
          }
          if(snapshot.connectionState == ConnectionState.done){
            return Scaffold(
                body: Container(
                    child: Center(
                      child: Text("Firebase App Initialized"),
                    )
                )
            );
          }
          return Scaffold(
              body: Center(
                  child: Text("Initialization App")
              )
          );
        }
    );
  }

}
