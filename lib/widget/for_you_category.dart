import 'package:flutter/material.dart';
import 'for_you_food.dart';
//Data
import '../data/for_you_data.dart';
import'../models/for_you_model.dart';

class ForYouCategory extends StatelessWidget{

    final List<ForCategory> _categories = fcategories;
    @override
    Widget build(BuildContext context) {
        return Container(
            height: 200.0,
            width: 50,
            color: Color(0xffFCE8E6),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (BuildContext context, int index){
                    return ForYouFood(
                        fCategoryName: fcategories[index].fCategoryName,
                        fImagePath: fcategories[index].fImagePath,
                    );
                },

            ),
        );
    }

}