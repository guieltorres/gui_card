import 'package:flutter/material.dart';
import 'components/reusable_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage("images/guilherme.jpg"),
              ),
              const Text(
                'Guilherme Torres',
                style: TextStyle(
                  fontFamily: 'Shippori Antique B1',
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.indigo[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.indigo[100],
                ),
              ),
              const ReusableCard(
                info: '+55 11 123 456 789',
                icon: Icons.phone,
              ),
              const ReusableCard(
                info: 'torres@email.com',
                icon: Icons.email,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
