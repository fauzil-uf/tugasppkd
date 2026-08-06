import 'package:flutter/material.dart';
import 'package:tugas2/tugas11/service/preference_handler.dart';
import 'package:tugas2/tugas11/view.dart';

class LoginTugas11 extends StatefulWidget {
  const LoginTugas11({super.key});

  @override
  State<LoginTugas11> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginTugas11> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 80,
                width: 200,
                margin: EdgeInsets.only(top: 250),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone number, username or email",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(width: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: isHidden,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      isHidden
                          ? Icons.visibility_off_rounded
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () => {
                      setState(() {
                        isHidden = !isHidden;
                      }),
                    },
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(width: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(left: 200),
              child: InkWell(
                onTap: () => {},
                child: TitleText(text: "Forgotten Password?"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 50,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1C82F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                onPressed: () async {
                  await PreferenceHandler.setLogin(true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Tugas11View(),
                    ),
                  );
                },

                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Row(
              children: [
                Expanded(
                  child: Divider(color: Color(0xffbebebe), thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Color(0xFF8E8E8E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(color: Color(0xffbebebe), thickness: 1),
                ),
              ],
            ),

            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Facebook.png",
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(height: 10),
                  TitleText(text: "Log in With Facebook"),
                ],
              ),
            ),
            const SizedBox(height: 170),

            Divider(),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account? "),
                  TitleText(text: "Sign Up"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Color(0xFF1C82F9), fontWeight: FontWeight.bold),
    );
  }
}
