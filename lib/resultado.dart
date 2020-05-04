import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String caminhoImagem;

  Resultado({this.caminhoImagem});

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void _voltar() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Resultado'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 30),
          color: Colors.greenAccent,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Image.asset(
                widget.caminhoImagem,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RaisedButton(
                  color: Colors.yellow,
                  onPressed: _voltar,
                  child: Text(
                    'Voltar',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
