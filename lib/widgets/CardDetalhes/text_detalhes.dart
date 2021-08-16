import 'package:flutter/material.dart';

class TextCardDetalhes extends StatelessWidget {
  final String texto;
  final TextStyle estilo;

  TextCardDetalhes({this.texto, this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 10,
        ),
        child: _estiliarTexto(texto));
  }

  _estiliarTexto(texto) {
    if (estilo != null) {
      return Text(
        texto,
        style: estilo,
      );
    }

    return Text(texto);
  }
}
