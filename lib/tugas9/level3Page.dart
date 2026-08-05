import 'package:flutter/material.dart';
import 'package:tugas2/tugas9/model/minuman_model.dart';

class Level3Page extends StatelessWidget {
  Level3Page({super.key});
  List<MinumanModel> dataProduk = [
    MinumanModel(
      nama: "Air Mineral",
      gambar: "assets/images/air_mineral.jpg",
      deskripsi:
          "Air mineral murni yang menyegarkan dan cocok diminum setiap hari.",
    ),

    MinumanModel(
      nama: "Teh Botol",
      gambar: "assets/images/teh_botol.jpg",
      deskripsi: "Minuman teh siap saji dengan rasa manis yang menyegarkan.",
    ),

    MinumanModel(
      nama: "Teh Hijau",
      gambar: "assets/images/teh_hijau.jpg",
      deskripsi: "Teh hijau dengan cita rasa alami dan aroma yang khas.",
    ),

    MinumanModel(
      nama: "Kopi Hitam",
      gambar: "assets/images/kopi_hitam.jpg",
      deskripsi: "Kopi hitam dengan rasa kuat dan aroma kopi yang khas.",
    ),

    MinumanModel(
      nama: "Kopi Susu",
      gambar: "assets/images/kopi_susu.jpg",
      deskripsi: "Perpaduan kopi dan susu dengan rasa lembut dan creamy.",
    ),

    MinumanModel(
      nama: "Cappuccino",
      gambar: "assets/images/cappuccino.jpg",
      deskripsi: "Minuman kopi dengan campuran espresso dan foam susu.",
    ),

    MinumanModel(
      nama: "Latte",
      gambar: "assets/images/latte.jpg",
      deskripsi: "Kopi dengan campuran susu yang memiliki rasa lembut.",
    ),

    MinumanModel(
      nama: "Espresso",
      gambar: "assets/images/espresso.webp",
      deskripsi: "Kopi pekat dengan cita rasa kuat dan aroma khas.",
    ),

    MinumanModel(
      nama: "Matcha Latte",
      gambar: "assets/images/matcha_latte.jpeg",
      deskripsi: "Minuman matcha dengan campuran susu yang creamy.",
    ),

    MinumanModel(
      nama: "Chocolate Milk",
      gambar: "assets/images/chocolate_milk.jpg",
      deskripsi: "Susu cokelat dengan rasa manis dan lembut.",
    ),

    MinumanModel(
      nama: "Jus Jeruk",
      gambar: "assets/images/jus_jeruk.jpg",
      deskripsi: "Jus jeruk segar yang kaya vitamin C.",
    ),

    MinumanModel(
      nama: "Jus Mangga",
      gambar: "assets/images/jus_mangga.jpg",
      deskripsi: "Jus mangga dengan rasa manis dan menyegarkan.",
    ),

    MinumanModel(
      nama: "Jus Alpukat",
      gambar: "assets/images/jus_alpukat.jpg",
      deskripsi: "Jus alpukat dengan tekstur lembut dan rasa creamy.",
    ),

    MinumanModel(
      nama: "Lemon Tea",
      gambar: "assets/images/lemon_tea.jpg",
      deskripsi: "Perpaduan teh dan lemon dengan rasa segar.",
    ),

    MinumanModel(
      nama: "Thai Tea",
      gambar: "assets/images/thai_tea.jpg",
      deskripsi: "Minuman teh khas Thailand dengan rasa manis.",
    ),

    MinumanModel(
      nama: "Milkshake Vanilla",
      gambar: "assets/images/milkshake_vanilla.jpg",
      deskripsi: "Milkshake vanila dengan tekstur lembut dan dingin.",
    ),

    MinumanModel(
      nama: "Yogurt",
      gambar: "assets/images/yogurt.jpg",
      deskripsi: "Minuman yogurt dengan rasa asam manis yang menyegarkan.",
    ),

    MinumanModel(
      nama: "Minuman Isotonik",
      gambar: "assets/images/minuman_isotonik.avif",
      deskripsi: "Minuman untuk membantu mengganti cairan tubuh.",
    ),

    MinumanModel(
      nama: "Soda Lemon",
      gambar: "assets/images/soda_lemon.avif",
      deskripsi: "Minuman soda dengan rasa lemon yang menyegarkan.",
    ),

    MinumanModel(
      nama: "Jus Stroberi",
      gambar: "assets/images/jus_stroberi.jpg",
      deskripsi: "Jus stroberi segar dengan rasa manis dan sedikit asam.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  dataProduk[index].gambar,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(dataProduk[index].nama),
              subtitle: Text(dataProduk[index].deskripsi),
            ),
          );
        },
      ),
    );
  }
}
