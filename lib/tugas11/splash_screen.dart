import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tugas2/extensions/navigation.dart';
import 'package:tugas2/tugas11/login.dart';
import 'package:tugas2/tugas11/service/preference_handler.dart';
import 'package:tugas2/tugas11/view.dart';

class SplashScreenTugas11 extends StatefulWidget {
  const SplashScreenTugas11({super.key});

  @override
  State<SplashScreenTugas11> createState() => _SplashScreenTugas11State();
}

class _SplashScreenTugas11State extends State<SplashScreenTugas11> {
  @override
  void initState() {
    super.initState();

    goToLogin();
  }

  void goToLogin() async {
    await Future.delayed(const Duration(seconds: 6));

    if (PreferenceHandler.isLogin == true) {
      context.push(const Tugas11View());
    } else {
      context.push(const LoginTugas11());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/animation/loading.json")),
    );
  }
}
