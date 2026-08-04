import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tugas8 extends StatefulWidget {
  const Tugas8({super.key});

  @override
  State<Tugas8> createState() => _Tugas8State();
}

class _Tugas8State extends State<Tugas8> {
  bool check = false;
  bool modeGelap = false;

  String kategori = "Elektronik";

  DateTime? tanggal;
  TimeOfDay? waktu;
  int selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Interaktif"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Menu Input",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.check_box),
              title: Text("Syarat & Ketentuan"),
              selected: selectedMenu == 0,
              onTap: () {
                setState(() {
                  selectedMenu = 0;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Mode Tampilan"),
              selected: selectedMenu == 1,
              onTap: () {
                setState(() {
                  selectedMenu = 1;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.category),
              title: const Text("Kategori Produk"),
              selected: selectedMenu == 2,
              onTap: () {
                setState(() {
                  selectedMenu = 2;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("Pilih Tanggal"),
              selected: selectedMenu == 3,
              onTap: () {
                setState(() {
                  selectedMenu = 3;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("Atur Pengingat"),
              selected: selectedMenu == 4,
              onTap: () {
                setState(() {
                  selectedMenu = 4;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        color: modeGelap ? Colors.grey.shade900 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Form Input",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

              const SizedBox(height: 20),

              Expanded(child: _buildContent()),

              const Divider(),

              Text(
                "Ringkasan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

              SizedBox(height: 10),

              Text(
                check
                    ? "Pendaftaran diperbolehkan"
                    : "Pendaftaran belum tersedia",
                style: TextStyle(
                  fontSize: 14,

                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

              Text(
                "Mode Gelap : ${modeGelap ? "Aktif" : "Nonaktif"} ",
                style: TextStyle(
                  fontSize: 14,

                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

              Text(
                "Kategori : $kategori",
                style: TextStyle(
                  fontSize: 14,
                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

              Text(
                tanggal == null
                    ? "Tanggal Lahir : -"
                    : "Tanggal Lahir : ${DateFormat("dd-MM-yyyy").format(tanggal!)}",
                style: TextStyle(
                  fontSize: 14,

                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

              Text(
                waktu == null
                    ? "Pengingat : -"
                    : "Pengingat : ${waktu!.format(context)}",
                style: TextStyle(
                  fontSize: 14,

                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    switch (selectedMenu) {
      case 0:
        return Column(
          children: [
            CheckboxListTile(
              title: Text(
                "Saya menyetujui persyaratan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),

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
        );

      case 1:
        return SwitchListTile(
          title: Text(
            "Aktifkan Mode Gelap",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: modeGelap ? Colors.white : Colors.black,
            ),
          ),
          value: modeGelap,
          onChanged: (value) {
            setState(() {
              modeGelap = value;
            });
          },
        );

      case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kategori Produk",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: modeGelap ? Colors.white : Colors.black,
              ),
            ),

            DropdownButton<String>(
              value: kategori,
              isExpanded: true,
              items: const [
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
                  kategori = value!;
                });
              },
            ),

            Text(
              "Anda memilih kategori : $kategori",
              style: TextStyle(
                fontSize: 15,

                color: modeGelap ? Colors.white : Colors.black,
              ),
            ),
          ],
        );

      case 3:
        return Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  DateTime? hasil = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );

                  if (hasil != null) {
                    setState(() {
                      tanggal = hasil;
                    });
                  }
                },
                child: Text("Pilih Tanggal"),
              ),

              const SizedBox(height: 10),

              Text(
                tanggal == null
                    ? "Tanggal Lahir : -"
                    : "Tanggal Lahir: ${DateFormat('dd-MM-yyyy').format(tanggal!)}",
                style: TextStyle(
                  fontSize: 14,

                  color: modeGelap ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        );

      case 4:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Text(
                "Atur Pengingat",
                style: TextStyle(
                  fontSize: 16,

                  color: modeGelap ? Colors.black : Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              waktu == null
                  ? "Pengingat diatur pukul: -"
                  : "Pengingat diatur pukul: ${DateFormat('HH:mm').format(DateTime(0, 0, 0, waktu!.hour, waktu!.minute))}",
            ),
          ],
        );

      default:
        return const SizedBox();
    }
  }
}
