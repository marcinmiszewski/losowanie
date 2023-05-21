import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:losowanie/second_page/second_page_content.dart';

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
