import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tugas8Flutter extends StatefulWidget {
  const Tugas8Flutter({super.key});

  @override
  State<Tugas8Flutter> createState() => _Tugas8FlutterState();
}

class _Tugas8FlutterState extends State<Tugas8Flutter> {
  int _currentIndex = 0;

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
        title: Text(_currentIndex == 0 ? "Halaman Utama" : "Tentang Aplikasi"),
        backgroundColor: Colors.blue,
      ),
      drawer: _currentIndex == 0
          ? Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),

                    child: Center(
                      child: Text(
                        "Menu Input",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.check_box),
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
                    leading: Icon(Icons.dark_mode),
                    title: Text("Mode Tampilan"),

                    selected: selectedMenu == 1,

                    onTap: () {
                      setState(() {
                        selectedMenu = 1;
                      });

                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.category),
                    title: Text("Kategori Produk"),

                    selected: selectedMenu == 2,

                    onTap: () {
                      setState(() {
                        selectedMenu = 2;
                      });

                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.calendar_month),
                    title: Text("Pilih Tanggal"),

                    selected: selectedMenu == 3,

                    onTap: () {
                      setState(() {
                        selectedMenu = 3;
                      });

                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text("Atur Pengingat"),

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
            )
          : null,

      body: _currentIndex == 0
          ? Container(
              width: double.infinity,

              color: modeGelap ? Colors.grey.shade900 : Colors.white,

              child: Padding(
                padding: EdgeInsets.all(16),

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

                    SizedBox(height: 20),

                    Expanded(child: _buildContent()),

                    Divider(),

                    Text(
                      "Ringkasan",

                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                        color: modeGelap ? Colors.white : Colors.black,
                      ),
                    ),

                    Text(
                      check
                          ? "Pendaftaran diperbolehkan"
                          : "Pendaftaran belum tersedia",

                      style: TextStyle(
                        color: modeGelap ? Colors.white : Colors.black,
                      ),
                    ),

                    Text(
                      "Mode Gelap : ${modeGelap ? "Aktif" : "Nonaktif"}",

                      style: TextStyle(
                        color: modeGelap ? Colors.white : Colors.black,
                      ),
                    ),

                    Text(
                      "Kategori : $kategori",

                      style: TextStyle(
                        color: modeGelap ? Colors.white : Colors.black,
                      ),
                    ),

                    Text(
                      tanggal == null
                          ? "Tanggal lahir : -"
                          : "Tanggal lahir : ${DateFormat("dd-MM-yyyy").format(tanggal!)}",

                      style: TextStyle(
                        color: modeGelap ? Colors.white : Colors.black,
                      ),
                    ),

                    Text(
                      waktu == null
                          ? "Pengingat : -"
                          : "Pengingat : ${waktu!.format(context)}",

                      style: TextStyle(
                        color: modeGelap ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.info, size: 80, color: Colors.blue),

                  SizedBox(height: 20),

                  Text(
                    "Input Widget App",

                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  Text("Aplikasi input interaktif Flutter"),

                  Text("Pembuat : Fauzil Ula Fachrudin"),

                  Text("Versi : 1.0.0"),
                ],
              ),
            ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Tentang"),
        ],
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
              padding: EdgeInsets.all(8.0),
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
              items: [
                DropdownMenuItem(
                  value: "Elektronik",
                  child: Text(
                    "Elektronik",
                    style: TextStyle(
                      fontSize: 14,

                      color: modeGelap ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "Pakaian",
                  child: Text(
                    "Pakaian",
                    style: TextStyle(
                      fontSize: 14,

                      color: modeGelap ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "Makanan",
                  child: Text(
                    "Makanan",
                    style: TextStyle(
                      fontSize: 14,

                      color: modeGelap ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "Lainnya",
                  child: Text(
                    "Lainnya",
                    style: TextStyle(
                      fontSize: 14,

                      color: modeGelap ? Colors.white : Colors.black,
                    ),
                  ),
                ),
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

              SizedBox(height: 10),

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

            SizedBox(height: 10),

            Text(
              waktu == null
                  ? "Pengingat diatur pukul: -"
                  : "Pengingat diatur pukul: ${DateFormat('HH:mm').format(DateTime(0, 0, 0, waktu!.hour, waktu!.minute))}",
            ),
          ],
        );

      default:
        return SizedBox();
    }
  }
}
