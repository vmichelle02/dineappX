import 'dart:ui';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dineapp/pages/discover.dart';
import 'package:dineapp/pages/faves.dart';
import 'package:dineapp/pages/other_page.dart';
import 'package:dineapp/pages/product.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter App',
            home: MyHomePage(),
            debugShowCheckedModeBanner: false,
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);


    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int pageIndex = 1;
    GlobalKey _bottomNavigationKey = GlobalKey();

    final ProductPlace _listProducts = ProductPlace();
    final Faves _faves = new Faves();
    final DiscoverPlace _discover = new DiscoverPlace();
    final otherPlace _otherPage = new otherPlace();

    Widget _showPage = new ProductPlace();
    Widget _pageChooser(int page){
        switch (page){
            case 0:
                return _listProducts;
                break;
            case 1:
                return _faves;
                break;
            case 2:
                return _discover;
                break;
            case 3:
                return _otherPage;
                break;
            case 4:
                return _faves;
                break;
            default:
                return new Container(
                    child: new Center(
                        child: new Text(
                            'No page found by page chooser',
                            style: new TextStyle(fontSize: 30),
                        ),
                    ),
                );
        }
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            //appBar: AppBar(
            // backgroundColor: Color(0xffBA5C50),
            //title: Text("Flutter App", style: TextStyle(
            // color: Colors.black
            //),),
            // ),
            body: Container(
                color: Color(0xffFCE8E6),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        _showPage,
                        //Text(pageIndex.toString(), textScaleFactor: 10.0),
                        //RaisedButton(
                        //child: Text('Go to Page of Index 1' ),
                        // onPressed:(){
                        // final CurvedNavigationBarState navBarState =
                        //    _bottomNavigationKey.currentState;
                        //  navBarState.setPage(1);
                        // }
                        //style: TextStyle(
                        //color: Colors.white
                        // ),
                    ],
                ),
            ),
            bottomNavigationBar: CurvedNavigationBar(
                index: pageIndex,
                color: Color(0xffBA5C50),
                backgroundColor: Color(0xffFCE8E6),
                buttonBackgroundColor: Color(0xffBA5C50),
                height: 50,
                items: <Widget>[
                    Icon(Icons.favorite_rounded,size: 27,color: Colors.black),
                    Icon(Icons.dashboard_rounded,size: 27,color: Colors.black),
                    //Icon(Icons.card_travel_rounded,size: 22,color: Colors.black),
                    //Icon(Icons.search,size: 22,color: Colors.black),
                    //Icon(Icons.favorite_rounded,size: 22,color: Colors.black),
                    Icon(Icons.account_circle_rounded,size: 27,color: Colors.black),
                ],
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(milliseconds: 600),
                onTap:(int tappedIndex){
                    setState(() {
                        _showPage = _pageChooser(tappedIndex);
                    });
                },
            ),
        );
    }

}

