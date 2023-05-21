import 'dart:math';
import 'package:flutter/material.dart';

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
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
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
