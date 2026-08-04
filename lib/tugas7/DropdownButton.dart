import 'package:flutter/material.dart';

class DropdownButtonPage extends StatefulWidget {
  const DropdownButtonPage({super.key});

  @override
  State<DropdownButtonPage> createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  String? _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              value: _selected,
              items: [
                DropdownMenuItem(
                  value: "Elektronik",
                  child: Text("Elektronik"),
                ),
                DropdownMenuItem(value: "Pakaian", child: Text("Pakaian")),
                DropdownMenuItem(value: "Makanan", child: Text("Makanan")),
                DropdownMenuItem(value: "Lainnya", child: Text("Lainnya")),
              ],
              onChanged: (value) {
                setState(() {
                  _selected = value!;
                });
              },
            ),

            Text("Anda memilih kategori: $_selected"),
          ],
        ),
      ),
    );
  }
}
