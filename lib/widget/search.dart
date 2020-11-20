import 'package:flutter/material.dart';

class SearchField extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return
            Form(
              child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                       child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            child: TextField(
                                decoration :InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 22.0),
                                    hintText :"Search",
                                    suffixIcon: Material(
                                        borderRadius: BorderRadius.circular(30.0),
                                        child: Icon(
                                            Icons.search,
                                            color: Colors.black,
                                        ),
                                    ),
                                    border: InputBorder.none
                                ),
                            ),
                      ),
                       ),




            );

    }
}