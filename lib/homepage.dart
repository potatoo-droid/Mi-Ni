import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'food_data.dart';
import 'food_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi Ni"),
      centerTitle: true,),
      drawer: Sidebar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: foodList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return FoodItem(food: foodList[index]);
          },
        ),
      ),
    );
  }
}
