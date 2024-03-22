import 'package:flutter/material.dart';
import 'quiz.dart';

class Resultado extends StatelessWidget {

  static const routname = '/resultado';


  const Resultado({super.key});
  @override
  Widget build(BuildContext context) {

    final argumentos = ModalRoute.of(context)!.settings.arguments as Resultados;
    int acerto = argumentos.acertos;
    int pergs = argumentos.resultados;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Resultado',
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: 'Right'),
                ),
                Text(
                  'Você acertou $acerto de $pergs',
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: 'Right'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/quiz');
                  },
                  child: Text(
                    'Tentar Novamente',
                    style: TextStyle(fontSize: 20, fontFamily: 'Right'),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 67, 42, 176),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      )),
                ),
              ]),
        )),
        backgroundColor: Color.fromARGB(255, 20, 20, 64),
      ),
    );
  }
}
