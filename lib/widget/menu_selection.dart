import 'package:flutter/material.dart';
import '../widget/choices_category.dart';
import '../models/food_items.dart';
import '../models/select_food_category.dart';
import 'package:dineapp/constants.dart';
import '../widget/food_tile.dart';

class menuSelection extends StatelessWidget {
  List<SelectFood>data = [
    SelectFood(
      id: 1,
      name: 'Trending',
      foodList: <FoodItems>[
        FoodItems(
            id: 1,
            name: 'Chicago Hot Dog',
            price: 5.99,
            imagePath: 'assets/cake.png'
        ),
        FoodItems(
            id: 2,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),

      FoodItems(
          id: 3,
          name: 'Chicago Hot Milk',
          price: 5.99,
          imagePath: 'assets/layercake.jpg'
      ),
      ],
    ),
    SelectFood(
      id: 2,
      name: 'New',
      foodList: <FoodItems>[
        FoodItems(
            id: 4,
            name: 'Chicago Hot Dog',
            price: 5.99,
            imagePath: 'assets/cake.png'
        ),
        FoodItems(
            id: 5,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),
        FoodItems(
            id: 6,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),
      ],
    ),
    SelectFood(
      id: 3,
      name: 'Free Delivery',
      foodList: <FoodItems>[
        FoodItems(
            id: 7,
            name: 'Chicago Hot Dog',
            price: 5.99,
            imagePath: 'assets/cake.png'
        ),
        FoodItems(
            id: 8,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),
        FoodItems(
            id: 9,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),
      ],
    ),
    SelectFood(
      id: 4,
      name: 'Discounted Items',
      foodList: <FoodItems>[
        FoodItems(
            id: 10,
            name: 'Chicago Hot Dog',
            price: 5.99,
            imagePath: 'assets/cake.png'
        ),
        FoodItems(
            id: 11,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),
        FoodItems(
            id: 12,
            name: 'Chicago Hot Milk',
            price: 5.99,
            imagePath: 'assets/layercake.jpg'
        ),
      ],
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
       height:230,
          child: Column(
            children: <Widget>[
              _buildMenu(),
            ],
          )

    );

    //   Container(
    //   child: Row(
    //     children: <Widget>[
    //       Align(
    //         alignment: Alignment(-1,0),
    //
    //         //child: RotatedBox(
    //         //quarterTurns: -1,
    //         child: Text("Trending  ",
    //           style: TextStyle(
    //             fontSize: 17,
    //             color: Colors.black,
    //             fontWeight: FontWeight.bold,
    //             fontFamily: "Arial",
    //           ),
    //         ),
    //       ),
    //       //),
    //
    //       Align(
    //         alignment: Alignment.center,
    //         // child: RotatedBox(
    //         // quarterTurns: -1,
    //         child: Text("Free Delivery  ",
    //           style: TextStyle(
    //             fontSize: 17,
    //             color: Colors.black,
    //             fontFamily: "Arial",
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //       // ),
    //
    //       Align(
    //         alignment: Alignment.center,
    //         // child: RotatedBox(
    //         // quarterTurns: -1,
    //         child: Text("New  ",
    //           style: TextStyle(
    //             fontSize: 17,
    //             color: Colors.black,
    //             fontFamily: "Arial",
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //       // ),
    //       // ChoicesMenu(),
    //     ],
    //   ),
    // );

  }

  Widget _buildMenu() {
    return Container(
    // height:100,
        child: DefaultTabController(
          length: data.length,
          child: Column(
              children: <Widget>[
                _buildTabBar(),
                  _buildTabBarView(),

              ]
          ),
        )
    );
  }

  Widget _buildTabBar() {
    return Container(
     //height:100,
      child: TabBar(
          labelColor: Colors.black,
          isScrollable: true,
          indicatorColor: Color(0xFFFb475F),
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold
          ),
          tabs: List.generate(
              data.length,
                  (index) =>
                  Tab(
                    text: data[index].name,
                  )
          )
      ),
    );
  }

  _buildTabBarView() {
    return Container(
    height:140,
     //   width:200,
        child: TabBarView(
            children: List.generate(
                  data.length,
                     (index) {
                   return ListView.separated(
                     padding: EdgeInsets.all(10),
                       itemBuilder: (context, foodIndex) {
                         return FoodTile(
                           foodItem: data[index].foodList[foodIndex],
                         );
                        },
                       separatorBuilder: (context, foodIndex) {
                          return SizedBox(
                            height: 20,
                        );
                        },
                        itemCount: data[index].foodList.length
                  );
                 }
              )
         )
     );
   }

}