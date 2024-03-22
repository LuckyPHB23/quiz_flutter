import 'package:flutter/material.dart';
import 'homepage.dart';
import 'quiz.dart';
import 'resultado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home' :(context) => HomePage(),
        '/quiz' :(context) => Quiz(),
        Resultado.routname :(context) => Resultado(),
      },
    );
  }
}

