import 'package:dineapp/pages/location.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dineapp/pages/menu.dart';
import 'package:dineapp/pages/sign_up.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => new _LoginPageState();
  }

final _formKey = GlobalKey<FormState>();
String _password;
String _email;


class _LoginPageState extends State<LoginPage> {


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
                    'assets/pink.jpg'
                ),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
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
              alignment: Alignment(-0.65, -0.40),
              //alignment: Alignment.topCenter,
              child: Text(
                "WELCOME BACK",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black,
                  fontFamily: "Teko Bold",
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment(0.65, -0.36),
              //alignment: Alignment.topCenter,
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationScreen()),
                  );
                },
                color: Color(0xffF6D7D7),
                textColor: Colors.black,
                child: Icon(
                  Icons.navigate_next,
                  size: 24,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),
          ),
          new SizedBox(
            width: 450,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children : <Widget> [
                Padding(
                  padding: const EdgeInsets.all(150.0),
                  child: Align(
                    alignment: Alignment(6, -0.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 50.0),
                  child: Align(
                    alignment: Alignment(6, -0.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0, left: 15, right: 15),
                  child: TextFormField(
                    onSaved: (value) => _email = value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      labelText: "Email / Phone Number",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      filled: true,
                      fillColor: Color(0xffF6D7D7),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: new BorderSide(
                          color: Color(0xffF6D7D7),
                        ),
                      ),
                      //fillColor: Color(0xffF6D7D7),
                    ),
                    // validator: (val) {
                    //   if(val.length==0) {
                    //     return "Email cannot be empty";
                    //   }else{
                    //     return null;
                    //   }
                    // },
                    //keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment(-1, -0.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 50.0),
                  child: Align(
                    alignment: Alignment(-1, -0.0),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:8.0, left: 15, right: 15),
                  child: TextFormField(
                    obscureText: true,
                    onSaved: (value) => _password = value,
                    decoration: new InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      filled: true,
                      fillColor: Color(0xffF6D7D7),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: new BorderSide(
                          color: Color(0xffF6D7D7),
                        ),
                      ),
                      //fillColor: Color(0xffF6D7D7),
                    ),
                    // validator: (val) {
                    //   if(val.length==0) {
                    //     return "Email cannot be empty";
                    //   }else{
                    //     return null;
                    //   }
                    // },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 52),
                  child: Align(
                    alignment: Alignment(0.65, 0),
                    //alignment: Alignment.topCenter,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff3B0404),
                        fontFamily: "Arial",
                      ),
                    ),
                  ),
                ),

                //Padding(
                //padding: const EdgeInsets.only(top: 50),
                Align(
                  alignment: Alignment(0.76, -0.45),
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "Teko",
                      ),
                      //textAlign: TextAlign.right,
                    ),
                  ),
                ),
                //),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: new Stack(
//         //crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               color: const Color(0xff000000),
//               image: DecorationImage(
//                 image: AssetImage(
//                     'assets/pink.jpg'
//                 ),
//                 fit: BoxFit.cover,
//                 colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 50),
//             child: Align(
//               alignment: Alignment(-0, -0.84),
//               //alignment: Alignment.topCenter,
//               child: Image.asset(
//                 "assets/dineXlogoBlack.png",
//                 cacheWidth: 287,
//                 cacheHeight: 95,
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 50),
//             child: Align(
//               alignment: Alignment(-0.65, -0.40),
//               //alignment: Alignment.topCenter,
//               child: Text(
//                 "WELCOME BACK",
//                 style: TextStyle(
//                   fontSize: 27,
//                   color: Colors.black,
//                   fontFamily: "Teko Bold",
//                 ),
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Align(
//               alignment: Alignment(0.65, -0.36),
//               //alignment: Alignment.topCenter,
//               child: MaterialButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LocationScreen()),
//                   );
//                 },
//                 color: Color(0xffF6D7D7),
//                 textColor: Colors.black,
//                 child: Icon(
//                   Icons.navigate_next,
//                   size: 24,
//                 ),
//                 padding: EdgeInsets.all(16),
//                 shape: CircleBorder(),
//               ),
//             ),
//           ),
//           new SizedBox(
//             width: 450,
//
//             child: Column(
//
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children : <Widget> [
//                 Padding(
//                   padding: const EdgeInsets.all(150.0),
//                   child: Align(
//                     alignment: Alignment(6, -0.0),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 50.0, top: 50.0),
//                   child: Align(
//                     alignment: Alignment(6, -0.0),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top:8.0, left: 15, right: 15),
//                   child: TextFormField(
//
//                     decoration: new InputDecoration(
//                       labelText: "Email / Phone Number",
//                       labelStyle: TextStyle(
//                         fontSize: 20,
//                       ),
//                       filled: true,
//                       fillColor: Color(0xffF6D7D7),
//                       border: new OutlineInputBorder(
//                         borderRadius: new BorderRadius.circular(10.0),
//                         borderSide: new BorderSide(
//                           color: Color(0xffF6D7D7),
//                         ),
//                       ),
//                       //fillColor: Color(0xffF6D7D7),
//                     ),
//                     validator: (val) {
//                       if(val.length==0) {
//                         return "Email cannot be empty";
//                       }else{
//                         return null;
//                       }
//                     },
//                     keyboardType: TextInputType.emailAddress,
//                     style: new TextStyle(
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Align(
//                     alignment: Alignment(-1, -0.0),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 50.0, top: 50.0),
//                   child: Align(
//                     alignment: Alignment(-1, -0.0),
//                   ),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(top:8.0, left: 15, right: 15),
//                   child: TextFormField(
//                     decoration: new InputDecoration(
//                       labelText: "Password",
//                       labelStyle: TextStyle(
//                         fontSize: 20,
//                       ),
//                       filled: true,
//                       fillColor: Color(0xffF6D7D7),
//                       border: new OutlineInputBorder(
//                         borderRadius: new BorderRadius.circular(10.0),
//                         borderSide: new BorderSide(
//                           color: Color(0xffF6D7D7),
//                         ),
//                       ),
//                       //fillColor: Color(0xffF6D7D7),
//                     ),
//                     validator: (val) {
//                       if(val.length==0) {
//                         return "Email cannot be empty";
//                       }else{
//                         return null;
//                       }
//                     },
//                     keyboardType: TextInputType.emailAddress,
//                     style: new TextStyle(
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(top: 52),
//                   child: Align(
//                     alignment: Alignment(0.65, 0),
//                     //alignment: Alignment.topCenter,
//                     child: Text(
//                       "Forgot Password",
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Color(0xff3B0404),
//                         fontFamily: "Arial",
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 //Padding(
//                 //padding: const EdgeInsets.only(top: 50),
//                 Align(
//                   alignment: Alignment(0.76, -0.45),
//                   //alignment: Alignment.topCenter,
//                   child: FlatButton(
//                     //color: Colors.blue,
//                     textColor: Colors.black,
//                     disabledColor: Colors.grey,
//                     disabledTextColor: Colors.black,
//                     padding: EdgeInsets.all(8.0),
//                     //splashColor: Colors.blueAccent,
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => SignUpScreen()),
//                       );
//                     },
//                     child: Text(
//                       "Sign Up",
//                       style: TextStyle(
//                         fontSize: 22.0,
//                         fontFamily: "Teko",
//                       ),
//                       //textAlign: TextAlign.right,
//                     ),
//                   ),
//                 ),
//                 //),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


