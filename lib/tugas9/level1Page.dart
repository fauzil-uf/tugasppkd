import 'package:flutter/material.dart';

class Level1Page extends StatelessWidget {
  Level1Page({super.key});

  final List<String> minuman = [
    "Air Mineral",
    "Teh Botol",
    "Teh Hijau",
    "Kopi Hitam",
    "Kopi Susu",
    "Cappuccino",
    "Latte",
    "Espresso",
    "Matcha Latte",
    "Chocolate Milk",
    "Jus Jeruk",
    "Jus Mangga",
    "Jus Alpukat",
    "Lemon Tea",
    "Thai Tea",
    "Susu",
    "Yogurt ",
    "Minuman Isotonik",
    "Soda Lemon",
    "Jus Stroberi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Level 1 - List Minuman")),
      body: ListView.builder(
        itemCount: minuman.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(minuman[index]));
        },
      ),
    );
  }
}
