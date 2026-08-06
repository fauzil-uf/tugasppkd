import 'package:flutter/material.dart';
import 'package:tugas2/tugas11/login.dart';
import 'package:tugas2/tugas11/service/preference_handler.dart';

class Tugas11View extends StatefulWidget {
  const Tugas11View({super.key});

  @override
  State<Tugas11View> createState() => _Tugas11ViewState();
}

class _Tugas11ViewState extends State<Tugas11View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Food Cura",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 42, 165, 79),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "FoodCura",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 22, 196, 115),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                onPressed: () async {
                  final messenger = ScaffoldMessenger.of(context);

                  await PreferenceHandler.setLogin(false);

                  if (!mounted) return;

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginTugas11(),
                    ),
                  );

                  messenger.showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Berhasil Logout",
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
