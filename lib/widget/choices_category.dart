import 'package:flutter/material.dart';
import 'choices.dart';
//Data
import '../data/choices_data.dart';
import'../models/choices_model.dart';

class ChoicesMenu extends StatelessWidget {
  final List<choicesCategory> _categories = cCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 50.0,
      color: Color(0xffFCE8E6),

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return Choices(

            cCategoryName: cCategories[index].cCategoryName,
            cImagePath: cCategories[index].cImagePath,

          );
        },

      ),
    );
  }


}