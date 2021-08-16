import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loja_alura/models/movel.dart';
import 'package:loja_alura/widgets/CardDetalhes/text_detalhes.dart';

class CardDetalhesPage extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Movel movel;

  CardDetalhesPage({this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCardDetalhes(
            texto: movel.titulo,
            estilo: Theme.of(context).textTheme.headline1,
          ),
          TextCardDetalhes(texto: movel.descricao),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais.format(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      primary: Colors.white),
                  onPressed: () {},
                  child: Text("Comprar"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
