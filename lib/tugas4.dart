import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FoodCura"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 84, 129, 114),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),

        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Form Makanan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Nama Makanan",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              labelText: "Kalori",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              labelText: "Porsi",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              labelText: "Waktu Makan",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Riwayat Makanan",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text("Nasi Goreng"),
            subtitle: Text("450 kkal • Sarapan"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text("Pizza"),
            subtitle: Text("700 kkal • Makan Siang"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.ramen_dining),
            title: Text("Mie Ayam"),
            subtitle: Text("520 kkal • Makan Siang"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text("Ayam Bakar"),
            subtitle: Text("400 kkal • Makan Malam"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.icecream),
            title: Text("Es Krim"),
            subtitle: Text("250 kkal • Camilan"),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
