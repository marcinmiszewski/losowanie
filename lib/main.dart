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
        title: const Text('LOSOWANIE'),
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
              Text(
                'Rzuć kością',
                style: GoogleFonts.anton(
                  fontSize: 30,
                  letterSpacing: 5,
                  color: Colors.red,
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
    final result = random.nextInt(2);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ODPOWIEDŹ'),
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
              if (result == 0)
                Column(
                  children: [
                    Text(
                      'NAUKA',
                      style: GoogleFonts.anton(
                        fontSize: 60,
                        letterSpacing: 10,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/study.jpg'),
                      radius: 120,
                    ),
                  ],
                ),
              if (result == 1)
                Column(
                  children: [
                    Text(
                      'Trening',
                      style: GoogleFonts.anton(
                        fontSize: 60,
                        letterSpacing: 10,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/training.jpg'),
                      radius: 120,
                    ),
                  ],
                ),
              const SizedBox(
                height: 50,
              ),
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
