import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _MyWidgetState();
}

bool showImage = false;
int counter = 25;
bool isFavorite = false;
bool showDescription = false;
String secret = "";

class _MyWidgetState extends State<Tugas5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Interaksi Flutter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter--;
          });
        },
        child: const Icon(Icons.remove, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 10),
              const Text("ini tentang ElevatedButton:"),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showImage = !showImage;
                  });
                },
                child: Text(
                  showImage ? 'Klik Saya!' : 'Klik Saya!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10), // TextButton
              if (showImage)
                Text(
                  "Halo, Saya Developer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

              const SizedBox(height: 30),

              const Text("ini tentang IconButton:"),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),

                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
              Text(
                isFavorite ? "Disukai" : "Belum Disukai",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),

              const Text("ini tentang TextButton:"),
              TextButton(
                onPressed: () {
                  setState(() {
                    showDescription = !showDescription;
                  });
                },
                child: Text(
                  "Lihat Deskripsi",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (showDescription)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flutter memungkinkan untuk menggunakan widget dengan berbagai tipe salah satunya ini yang merupakan textbutton",
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 30),
              const Text("ini tentang InkWell:"),
              const SizedBox(height: 10),
              Material(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      secret = "Sentuhan Terdeteksi";
                      debugPrint("pesan rahasia: inkwell");
                    });
                  },
                  child: Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Sentuh kotak ini",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              Text(secret, style: TextStyle(fontSize: 16)),
              const SizedBox(height: 30),

              const Text("ini tentang GestureDetector:"),

              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                  });

                  debugPrint("Disentuh sekali!");
                },
                onDoubleTap: () {
                  setState(() {
                    counter += 2;
                  });

                  debugPrint("Disentuh dua kali");
                },
                onLongPress: () {
                  setState(() {
                    counter += 3;
                  });

                  debugPrint("Tahan Lama");
                },
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Angka : $counter",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "• Tap = +1\n• Double Tap = +2\n• Long Press = +3",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
