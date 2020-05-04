import 'dart:math';

import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  void _jogar() {
    int indice = Random().nextInt(2);
    var opcoes = ['moeda_cara.png', 'moeda_coroa.png'];
    String caminhoImagem = 'imagens/' + opcoes[indice];
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(
                  caminhoImagem: caminhoImagem,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cara ou Coroa'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.greenAccent,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset('imagens/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: RaisedButton(
                color: Colors.yellow,
                onPressed: _jogar,
                child: Text(
                  'Jogar',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
