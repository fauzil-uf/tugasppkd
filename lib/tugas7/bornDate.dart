import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BornDate extends StatefulWidget {
  const BornDate({super.key});

  @override
  State<BornDate> createState() => _BornDateState();
}

class _BornDateState extends State<BornDate> {
  DateTime? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
          child: Text("Tanggal Lahir"),
        ),
        Text(
          _selectedTime == null
              ? "Tanggal Lahir: -"
              : "Tanggal Lahir: ${DateFormat('dd-MM-yyyy').format(_selectedTime!)}",
        ),
      ],
    );
  }
}
