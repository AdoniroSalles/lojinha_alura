import 'package:flutter/material.dart';
import 'package:loja_alura/models/movel.dart';

import 'imagem_elemento_gridprodutos.dart';

class GridProdutosPage extends StatelessWidget {
  final moveis;

  const GridProdutosPage({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: moveis.length,
      itemBuilder: (context, index) {
        final movel = Movel.fromJson(moveis[index]);

        return ImageElementoGridProdutos(
          imagem: movel.foto,
        );
      },
    );
  }
}
