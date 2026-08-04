import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Timepicker extends StatefulWidget {
  const Timepicker({super.key});

  @override
  State<Timepicker> createState() => _TimepickerState();
}

class _TimepickerState extends State<Timepicker> {
  TimeOfDay? waktu;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            TimeOfDay? hasil = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (hasil != null) {
              setState(() {
                waktu = hasil;
              });
            }
          },
          child: const Text("Atur Pengingat"),
        ),

        Text(
          waktu == null
              ? "Pengingat diatur pukul: -"
              : "Pengingat diatur pukul: ${DateFormat('HH:mm').format(DateTime(0, 0, 0, waktu!.hour, waktu!.minute))}",
        ),
      ],
    );
  }
}
