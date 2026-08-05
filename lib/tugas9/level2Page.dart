import 'package:flutter/material.dart';

class Level2Page extends StatelessWidget {
  Level2Page({super.key});
  final List<Map<String, dynamic>> minuman = [
    {"nama": "Air Mineral", "icon": Icons.water_drop},
    {"nama": "Teh Botol", "icon": Icons.local_drink},
    {"nama": "Teh Hijau", "icon": Icons.emoji_food_beverage},
    {"nama": "Kopi Hitam", "icon": Icons.coffee},
    {"nama": "Kopi Susu", "icon": Icons.coffee},
    {"nama": "Cappuccino", "icon": Icons.coffee},
    {"nama": "Latte", "icon": Icons.coffee},
    {"nama": "Espresso", "icon": Icons.coffee},
    {"nama": "Matcha Latte", "icon": Icons.emoji_food_beverage},
    {"nama": "Chocolate Milk", "icon": Icons.local_cafe},
    {"nama": "Jus Jeruk", "icon": Icons.blender},
    {"nama": "Jus Mangga", "icon": Icons.blender},
    {"nama": "Jus Alpukat", "icon": Icons.blender},
    {"nama": "Lemon Tea", "icon": Icons.local_drink},
    {"nama": "Thai Tea", "icon": Icons.local_drink},
    {"nama": "Milkshake Vanilla", "icon": Icons.icecream},
    {"nama": "Yogurt Drink", "icon": Icons.local_drink},
    {"nama": "Minuman Isotonik", "icon": Icons.sports_bar},
    {"nama": "Soda Lemon", "icon": Icons.local_bar},
    {"nama": "Smoothie Stroberi", "icon": Icons.blender},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: minuman.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(minuman[index]["icon"]),
            title: Text(minuman[index]["nama"]!),
          );
        },
      ),
    );
  }
}
