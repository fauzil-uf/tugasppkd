import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool modeGelap = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: modeGelap ? Colors.grey[900] : Colors.white,
      child: Column(
        children: [
          SwitchListTile(
            title: Text(
              "Aktifkan Mode Gelap",
              style: TextStyle(color: modeGelap ? Colors.white : Colors.black),
            ),
            value: modeGelap,
            onChanged: (value) {
              setState(() {
                modeGelap = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
