import 'package:flutter/material.dart';
import 'food_options.dart';
//Data
import '../data/category_data.dart';
import'../models/category_model.dart';


class FoodCategory extends StatelessWidget{
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      color: Color(0xffFCE8E6),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodOptions(
            categoryName: categories[index].categoryName,
            imagePath: categories[index].imagePath,
          );
        },

      ),
    );
  }

}