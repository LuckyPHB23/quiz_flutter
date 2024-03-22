import 'package:flutter/material.dart';
import 'package:ola_mundo/resultado.dart';
import 'package:ola_mundo/perguntas.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class Resultados{
  final int acertos;
  final int resultados;
  Resultados({required this.acertos, required this.resultados});
}

class _QuizState extends State<Quiz> {
  @override
  List<Map<String, dynamic>> perguntas = QuizData.quiz;
  int perguntaNum = 0;
  int respostas_certas = 0;
  void process_resposta(int resposta_selecionada){
      int alternativa_selecionada = perguntas[perguntaNum]["Alternativa correta"] as int;
      print('aaa $resposta_selecionada e ${perguntas.length}');

      if(resposta_selecionada == alternativa_selecionada){
        respostas_certas++;
      }
      setState(() {
        perguntaNum++;
      });
      if(perguntaNum == perguntas.length){
        print('igual');
        final resultados = Resultados(acertos: respostas_certas , resultados: perguntaNum);
        Navigator.pushNamed(context, '/resultado', arguments: resultados);
        perguntaNum -= 1;
      
      }
      
    }
  Widget build(BuildContext context) {
   
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Right'),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/imagens/QZ1.png',
                width: 70,
              ),
              Text(
                'QUIZ do Curso de Flutter',
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 14, 14, 48),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text('${perguntaNum + 1} de 10'),
              ),
              Text(
                'Pergunta: ' + perguntas[perguntaNum]["Pergunta"],
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    process_resposta(0);
                    print(perguntaNum);
                  },
                  child: Text(perguntas[perguntaNum]["Respostas"][0]),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 67, 42, 176),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), bottomRight: Radius.circular(20)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    process_resposta(1);
                    print(perguntaNum);
                  },
                  child: Text(perguntas[perguntaNum]["Respostas"][1]),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 67, 42, 176),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), bottomRight: Radius.circular(20)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    process_resposta(2);
                    print(perguntaNum);
                  },
                  child: Text(perguntas[perguntaNum]["Respostas"][2]),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 67, 42, 176),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), bottomRight: Radius.circular(20)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    process_resposta(3);
                    print(perguntaNum);
                  },
                  child: Text(perguntas[perguntaNum]["Respostas"][3]),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 67, 42, 176),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), bottomRight: Radius.circular(20)
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),backgroundColor: Color.fromARGB(223, 252, 247, 247),
      ),
    );
  }
}
