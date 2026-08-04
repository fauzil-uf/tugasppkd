import 'package:flutter/material.dart';
import 'package:tugas2/extensions/navigation.dart';
import 'package:tugas2/tugas7/DropdownButton.dart';
import 'package:tugas2/tugas7/bornDate.dart';
import 'package:tugas2/tugas7/checkbox.dart';
import 'package:tugas2/tugas7/switch.dart';
import 'package:tugas2/tugas7/timepicker.dart';

//ini tidak terpakai karena mesti membuat result area yang mana sulit jika semua di page berbeda final tugas7 ada di tugas7.dart

class Tugas7failed extends StatefulWidget {
  const Tugas7failed({super.key});

  @override
  State<Tugas7failed> createState() => _Tugas7failedState();
}

class _Tugas7failedState extends State<Tugas7failed> {
  int _selectedButton = 0;
  void changeBottom(int index) {
    _selectedButton = index;
    print("ini adalah value dari $_selectedButton");
    setState(() {});

    context.pop();
  }

  final List<Widget> _widgetOptions = [
    CheckboxPage(),
    SwitchPage(),
    DropdownButtonPage(),
    BornDate(),
    Timepicker(),
    // ExpandedDay6(),
    // StackDay8(),
    // ShowImageDay10(),
    // InputWidgetDay13(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Interaktif")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: Text(
                  "Menu Input",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.check_box),
              title: const Text("Syarat & Ketentuan"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Mode Tampilan"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text("Kategori Produk"),
              onTap: () {
                changeBottom(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("Pilih Tanggal"),
              onTap: () {
                changeBottom(3);
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("Atur Pengingat"),
              onTap: () {
                changeBottom(4);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedButton),
    );
  }
}
