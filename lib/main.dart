import 'package:flutter/material.dart';
import 'package:losowanie/first_page/first_page_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Losowanie',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const FirstPage(),
    );
  }
}
