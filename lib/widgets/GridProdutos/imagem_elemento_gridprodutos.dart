import 'package:flutter/material.dart';

class ImageElementoGridProdutos extends StatelessWidget {
  final String imagem;

  ImageElementoGridProdutos({this.imagem});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('utils/assets/imagens/$imagem'),
      fit: BoxFit.cover,
    );
  }
}
