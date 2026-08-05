import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tugas2/extensions/navigation.dart';
import 'package:tugas2/tugas10/konfirmasi.dart';

class LoginTugas9 extends StatefulWidget {
  const LoginTugas9({super.key});

  @override
  State<LoginTugas9> createState() => _LoginTugas9State();
}

class _LoginTugas9State extends State<LoginTugas9> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 10")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Masukkan Nama",
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.symmetric(vertical: 16),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Nama lengkap wajib diisi";
                }
                return null;
              },
              controller: nameController,
            ),

            TextFormField(
              decoration: InputDecoration(
                hintText: "Masukkan Email",
                prefixIcon: Icon(Icons.email),
                contentPadding: EdgeInsets.symmetric(vertical: 16),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email wajib diisi";
                } else if (!value.contains("@")) {
                  return "Email tidak valid";
                }
                return null;
              },
              controller: emailController,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Masukkan No. Hp (Opsional)",
                prefixIcon: Icon(Icons.phone),
                contentPadding: EdgeInsets.symmetric(vertical: 16),
              ),
              validator: (value) {
                return null;
              },
              controller: phoneController,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Masukkan Kota Asal",
                prefixIcon: Icon(Icons.location_city),
                contentPadding: EdgeInsets.symmetric(vertical: 16),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Kota asal wajib diisi";
                }
                return null;
              },
              controller: cityController,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 56),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Login Berhasil"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Lottie.asset("assets/animation/success.json"),
                        ],
                      ),
                      actions: [
                        //ke halaman konfirmasi
                        TextButton(
                          onPressed: () => context.pushAndRemoveAll(
                            HalamanKonfirmasi(
                              namaLengkap: nameController.text,
                              kotaAsal: cityController.text,
                            ),
                          ),
                          child: Text("Lanjut"),
                        ),
                        TextButton(
                          onPressed: () => context.pop(),
                          child: Text("Kembali"),
                        ),
                      ],
                    ),
                  );
                } else {
                  String pesan = "";

                  if (nameController.text.isEmpty) {
                    pesan += "• Nama lengkap wajib diisi\n";
                  }

                  if (emailController.text.isEmpty) {
                    pesan += "• Email wajib diisi\n";
                  } else if (!emailController.text.contains("@")) {
                    pesan += "• Email tidak valid\n";
                  }

                  if (cityController.text.isEmpty) {
                    pesan += "• Kota asal wajib diisi\n";
                  }

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Data Belum Lengkap"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 150,
                            child: Lottie.asset("assets/animation/error.json"),
                          ),
                          Text(pesan, style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Baik"),
                        ),
                      ],
                    ),
                  );
                }
              },

              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
