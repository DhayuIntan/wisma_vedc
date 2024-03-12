import 'package:flutter/material.dart';
import 'package:wisma_vedc/page/show_bottom_page.dart';
import 'package:wisma_vedc/page/signup_page.dart';

import '../widget/button.dart';
import '../widget/custom_textfield.dart';
import '../widget/password_textfield.dart';
import '../widget/small_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(96, 184, 244, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: const Text(
                "Masuk",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: const Text(
                "Wisma BOE",
                style: TextStyle(
                  color: Color.fromRGBO(96, 184, 244, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmallText(key: UniqueKey(), text: "Email atau Nomor Telepon"),
            CustomTextField(
              key: UniqueKey(),
              hintText: "Masukkan Email atau Nomor Telepon",
              icon: const Icon(
                Icons.person,
                color: Color(0xFFD9D9D9),
              ),
              fontSize: 10.0,
            ),
            SmallText(key: UniqueKey(), text: "Kata Sandi"),
            PasswordTextField(
              key: UniqueKey(),
              hintText: "Masukkan Kata Sandi",
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 15),
              alignment: Alignment.topRight,
              child: const Text(
                "Lupa kata sandi?",
                style: TextStyle(
                  color: Color(0xFF60B8F4),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomButton(
              key: UniqueKey(),
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return const BottomSheetContent();
                  },
                );
              },
              text: "Masuk",
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 45),
              alignment: Alignment.center,
              child: const Text(
                "-Atau masuk dengan-",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 10,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 20, bottom: 20),
              alignment: Alignment.center,
              child: Image.asset(
                'img/google_button.png',
                height: 50,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun?"),
                  GestureDetector(
                    child: const Text(
                      " Daftar",
                      style: TextStyle(color: Color(0xFF309CFF)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
