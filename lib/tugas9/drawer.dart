import 'package:flutter/material.dart';
import 'package:tugas2/extensions/navigation.dart';
import 'package:tugas2/tugas9/level1Page.dart';
import 'package:tugas2/tugas9/level2Page.dart';
import 'package:tugas2/tugas9/level3Page.dart';

class DrawerTugas9 extends StatefulWidget {
  const DrawerTugas9({super.key});

  @override
  State<DrawerTugas9> createState() => _DrawerTugas9State();
}

class _DrawerTugas9State extends State<DrawerTugas9> {
  int _selectedButton = 0;
  void changeBottom(int index) {
    _selectedButton = index;
    print("ini adalah value dari $_selectedButton");
    setState(() {});

    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Level1Page(),
    Level2Page(),
    Level3Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 9 ")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Level 1"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.map_outlined),
              title: Text("Level2"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.model_training),
              title: Text("Level3"),
              onTap: () {
                changeBottom(2);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedButton),
    );
  }
}
