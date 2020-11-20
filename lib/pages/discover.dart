import 'package:dineapp/pages/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'faves.dart';

class DiscoverPlace extends StatelessWidget {

  Widget textfield({@required String hintText}){
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          fillColor: Colors.white30,
          filled:true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:746,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xffBA5C50),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );

              },
            ),
          ),
          body: Stack(
            alignment: Alignment(0.1,0.14),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    margin :EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        textfield(
                          hintText: 'Username',
                        ),
                        textfield(
                          hintText: 'Email',
                        ),
                        textfield(
                          hintText: 'Password',
                        ),
                        textfield(
                          hintText: 'Confirm password',
                        ),
                        Container(
                          height: 55,
                          width:double.infinity,
                          child: RaisedButton(
                              onPressed:(){},
                              color: Color(0xffBA5C50),
                              child:Center(
                                  child: Text("Update", style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                  ),
                                  )
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ],
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
                      padding: EdgeInsets.all(3),
                      child: Text("Profile",
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ))
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 5),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/user.png'
                          ),
                        )
                    ),

                  )

                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 290, left: 184 ),
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed:(){

                      }
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color=Color(0xffBA5C50);
    Path path=Path()..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width/2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

  }

}

// child: Stack(
//     //crossAxisAlignment: CrossAxisAlignment.center,
//     //mainAxisAlignment: MainAxisAlignment.end,
//     children: <Widget>[
//         Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: Container(
//                 decoration: new BoxDecoration(
//                     image: new DecorationImage(
//                         image: new AssetImage("assets/wall.png"),
//                         fit: BoxFit.fitWidth,
//                     ),
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0, -0.90),
//                 //alignment: Alignment.topCenter,
//                 child: Image.asset("assets/dineXlogoBlack.png",
//                     cacheWidth: 240,
//                     cacheHeight: 85,
//                 ),
//             ),
//         ),
//
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0, -0.65),
//                 //alignment: Alignment.topCenter,
//                 child: Text(
//                     "User Profile",
//                     style: TextStyle(
//                         fontSize:35,
//                         color: Colors.black,
//                         fontFamily: "Teko",
//                     ),
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0, -0.45),
//                 //alignment: Alignment.topCenter,
//                 child: Image.asset("assets/user.png",
//                     cacheWidth: 133,
//                     cacheHeight: 133,
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(0.40, -0.28),
//                 //alignment: Alignment.topCenter,
//                 child: MaterialButton(
//                     onPressed: () {},
//                     color: Color(0xffF6D7D7),
//                     textColor: Colors.black,
//                     child: Icon(
//                         Icons.camera_alt,
//                         size: 24,
//                     ),
//                     padding: EdgeInsets.all(16),
//                     shape: CircleBorder(),
//                 )
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0.9, -0.1),
//                 //alignment: Alignment.topCenter,
//                 child: Text(
//                     "User Name",
//                     style: TextStyle(
//                         fontSize:35,
//                         color: Colors.black,
//                         fontFamily: "Teko",
//                     ),
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0.9, 0.15),
//                 //alignment: Alignment.topCenter,
//                 child: Text(
//                     "Password",
//                     style: TextStyle(
//                         fontSize:35,
//                         color: Colors.black,
//                         fontFamily: "Teko",
//                     ),
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0.9, 0.39),
//                 //alignment: Alignment.topCenter,
//                 child: Text(
//                     "Phone Number",
//                     style: TextStyle(
//                         fontSize:35,
//                         color: Colors.black,
//                         fontFamily: "Teko",
//                     ),
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(-0.9, 0.64),
//                 //alignment: Alignment.topCenter,
//                 child: Text(
//                     "Payment Method",
//                     style: TextStyle(
//                         fontSize:35,
//                         color: Colors.black,
//                         fontFamily: "Teko",
//                     ),
//                 ),
//             ),
//         ),
//
//         Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//                 alignment: Alignment(0, 0.94),
//                 //alignment: Alignment.topCenter,
//                 child: RaisedButton(
//                     textColor: Colors.white,
//                     color: Colors.black,
//                     onPressed:(){
//                         //Navigator.push(
//                         //context,
//                         // MaterialPageRoute(builder:(context) => NewScreen()),
//                         //);
//                     },
//                     child: new Text("Save Changes",
//                         style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.white,
//                             fontFamily: "Arial"
//                         ),
//                         textAlign: TextAlign.center,
//                     ),
//                 )
//             )
//         ),
//     ],
//     ),
// );





