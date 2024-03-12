import 'package:flutter/material.dart';
import 'package:wisma_vedc/page/login_page.dart';

import '../widget/custom_textfield.dart';
import '../widget/password_textfield.dart';
import '../widget/small_text.dart';
import '../widget/button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SignUpPage> {
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
                "Daftar",
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
            ),
            SmallText(key: UniqueKey(), text: "Nama Lengkap"),
            CustomTextField(
              key: UniqueKey(),
              hintText: "Masukkan Nomor Telepon",
              icon: const Icon(
                Icons.person,
                color: Color(0xFFD9D9D9),
              ),
            ),
            SmallText(key: UniqueKey(), text: "Kata Sandi"),
            PasswordTextField(
              key: UniqueKey(),
              hintText: "Masukkan Kata Sandi",
            ),
            SmallText(key: UniqueKey(), text: "Konfirmasi Kata Sandi"),
            PasswordTextField(
              key: UniqueKey(),
              hintText: "Masukkan Konfirmasi Kata Sandi",
            ),
            CustomButton(
              key: UniqueKey(),
              onTap: () {},
              text: "Daftar",
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sudah punya akun?"),
                  GestureDetector(
                    child: const Text(
                      " Masuk",
                      style: TextStyle(color: Color(0xFF309CFF)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
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
