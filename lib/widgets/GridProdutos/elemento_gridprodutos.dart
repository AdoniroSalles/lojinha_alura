import 'package:flutter/material.dart';
import 'package:loja_alura/models/movel.dart';
import 'package:loja_alura/pages/detalhes.dart';
import 'package:loja_alura/widgets/GridProdutos/degrade_element_gridprodutos.dart';
import 'package:loja_alura/widgets/GridProdutos/imagem_elemento_gridprodutos.dart';
import 'package:loja_alura/widgets/GridProdutos/titulo_elemento_gridprodutos.dart';

class ElementoGridProtudos extends StatelessWidget {
  final Movel movel;

  ElementoGridProtudos({this.movel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalhesPage(
              movel: movel,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            ),
          ],
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ImageElementoGridProdutos(imagem: movel.foto),
              DegradeGrideProdutos(),
              TituloElementoGridProdutos(
                titulo: movel.titulo,
              )
            ],
          ),
        ),
      ),
    );
  }
}
