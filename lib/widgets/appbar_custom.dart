import 'package:flutter/material.dart';
import 'package:loja_alura/widgets/botao_carrinho.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool ehPaginaCarrinho;

  AppBarCustom({this.titulo, this.ehPaginaCarrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _mudarPaginaCarrinho(ehPaginaCarrinho),
      ],
    );
  }

  //kToolbarHeight: defino pelo flutter, pega o tamanho padrão da altura do appbar
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  _mudarPaginaCarrinho(bool ehPaginaCarrinho) {
    return ehPaginaCarrinho ? Container() : BotaoCarrinho();
  }
}
