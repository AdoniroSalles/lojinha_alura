import 'package:flutter/material.dart';

class ImageElementoGridProdutos extends StatelessWidget {
  final String imagem;

  ImageElementoGridProdutos({this.imagem});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        image: AssetImage('utils/assets/imagens/$imagem'),
        fit: BoxFit.cover,
      ),
    );
  }
}
