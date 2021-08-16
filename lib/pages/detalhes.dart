import 'package:flutter/material.dart';
import 'package:loja_alura/models/movel.dart';
import 'package:loja_alura/widgets/appbar_custom.dart';
import 'package:loja_alura/widgets/CardDetalhes/card_detalhes.dart';

class DetalhesPage extends StatelessWidget {
  final Movel movel;

  const DetalhesPage({this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("utils/assets/imagens/${movel.foto}"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustom(
          titulo: '',
          ehPaginaCarrinho: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(20),
            height: 220,
            child: CardDetalhesPage(
              movel: movel,
            ),
          ),
        ),
      ),
    );
  }
}
