import 'package:flutter/material.dart';
import 'food_data.dart';

class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(food.image, fit: BoxFit.cover, width: double.infinity),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Text(food.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("\$${food.price.toStringAsFixed(2)}", style: TextStyle(color: Colors.black, fontSize: 16)),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${food.name} ordered successfully!", style: TextStyle(
                        color: Colors.white,
                      ),)),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text("Order Now", style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
