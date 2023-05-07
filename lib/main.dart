import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print('Pergunta ${perguntaSelecionada} respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita',
      'Qual o seu animal favorito',
      'Qual a cidade que nasceu',
      'Qual seu tipo de comida favorita'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            Resposta('Resposta 1', responder),
            Resposta('Resposta 2', responder),
            Resposta('Resposta 3', responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

class RaisedButton {}
