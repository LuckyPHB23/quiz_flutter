import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sunny'),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'QUIZ do Curso de Flutter',
          ),
          backgroundColor: Color.fromARGB(255, 14, 14, 48),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/imagens/QZ1.png',
                height: 400,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Jogar');
                  Navigator.pushNamed(context, '/quiz');
                },
                child: Text(
                  'Jogar',
                  style: TextStyle(fontSize: 40, fontFamily: 'Sunny'),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 67, 42, 176),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5), 
                    ), 
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 20, 20, 64),
      ),
    );
  }
}