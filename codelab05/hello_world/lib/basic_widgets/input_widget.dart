import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget{
  const InputWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        backgroundColor: Color(0xFFFFF0DD),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama', 
          ),
        ),
      ),
    );
  }
}