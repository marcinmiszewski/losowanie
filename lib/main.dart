import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

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

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Losowanie'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 28, 28, 31),
              Color.fromARGB(255, 98, 103, 105),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rzuć',
                style: GoogleFonts.anton(
                  fontSize: 60,
                  letterSpacing: 10,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 50),
              const CircleAvatar(
                backgroundImage: AssetImage('images/logo.png'),
                backgroundColor: Colors.white,
                radius: 120,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text('SPRAWDŹ WYNIK'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextInt(6) + 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wynik'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 28, 28, 31),
              Color.fromARGB(255, 146, 157, 160),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(height: 140),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/dice$result.jpg'),
                    radius: 120,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('SPRÓBÓJ PONOWNIE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
