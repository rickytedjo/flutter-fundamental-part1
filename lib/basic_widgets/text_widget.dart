import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Nama saya Ricky, sedang belajar Pemrograman Mobile",
        style: TextStyle(color: Colors.red, fontSize: 14));
  }
}
