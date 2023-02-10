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
        primarySwatch: Colors.blue,
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
        title: const Text('LOSOWANIE'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 219, 147, 99),
              Color.fromARGB(255, 105, 255, 85),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CO DZISIAJ ROBIMY?',
                style: GoogleFonts.anton(
                  fontSize: 30,
                  letterSpacing: 5,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                child: const Text('SPRAWDŹ'),
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

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ODPOWIEDŹ'),
        backgroundColor: result == true
            ? Colors.green
            : const Color.fromARGB(255, 244, 130, 54),
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
              if (result == true)
                Text(
                  'NAUKA',
                  style: GoogleFonts.anton(
                    fontSize: 60,
                    letterSpacing: 10,
                    color: Colors.green,
                  ),
                ),
              const SizedBox(height: 50),
              if (result == true)
                const CircleAvatar(
                  backgroundImage: AssetImage('images/study.jpg'),
                  radius: 120,
                ),
              if (result == false)
                Text(
                  'TRENING',
                  style: GoogleFonts.anton(
                    fontSize: 60,
                    letterSpacing: 10,
                    color: const Color.fromARGB(255, 244, 130, 54),
                  ),
                ),
              const SizedBox(height: 50),
              if (result == false)
                const CircleAvatar(
                  backgroundImage: AssetImage('images/training.jpg'),
                  radius: 120,
                ),
              if (result == false)
                const SizedBox(
                  height: 50,
                ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: result == true
                        ? Colors.green
                        : const Color.fromARGB(255, 244, 130, 54)),
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
