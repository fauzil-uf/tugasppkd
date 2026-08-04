import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CheckboxListTile(
            title: const Text("Saya menyetujui persyaratan"),
            value: check,
            onChanged: (value) {
              setState(() {
                check = value!;
              });
            },
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              check
                  ? "Pendaftaran diperbolehkan"
                  : "Pendaftaran belum tersedia",
              style: TextStyle(color: !check ? Colors.red : Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
