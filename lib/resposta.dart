import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quantoSelecionado;

  Resposta(this.texto, this.quantoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(texto),
          onPressed: quantoSelecionado,
        ));
  }
}
