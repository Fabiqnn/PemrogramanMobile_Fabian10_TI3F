import 'package:basic_layout_flutter/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout : Fabian Hasbillah | 2341720170',
      home: const Navbar()
    );
  }
}