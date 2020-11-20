//import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:dineapp/widget/choices_category.dart';
import 'package:dineapp/widget/food_category.dart';
import 'package:dineapp/widget/for_you_category.dart';
import 'package:dineapp/widget/for_you_food.dart';
import 'package:dineapp/widget/menu_header.dart';
import 'package:dineapp/widget/menu_selection.dart';
import 'package:flutter/material.dart';
import 'package:dineapp/widget/search.dart';
import '../widget/food_category.dart';

class Faves extends StatefulWidget{
  @override
  _FavesPlace createState() => _FavesPlace();
}

class _FavesPlace extends State<Faves> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 745,
      child: ListView(

        //padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          MenuHeader(),
          SearchField(),
          SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "For You",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          ForYouCategory(),
          FoodCategory(),
          SizedBox(height:10.0),

          menuSelection(),
          //ChoicesMenu(),

        ],
      ),
    );
  }
}

