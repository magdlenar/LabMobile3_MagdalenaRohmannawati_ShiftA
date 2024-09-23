import 'package:flutter/material.dart';
import 'package:tugaspertemuan3/loginpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Menu',
      home: Loginpage(),
    );
  }
}
