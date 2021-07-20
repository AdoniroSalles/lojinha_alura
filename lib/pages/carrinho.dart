import 'package:flutter/material.dart';
import 'package:loja_alura/widgets/appbar_custom.dart';

class CarrinhoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBarCustom(
        titulo: "Carrinho",
        ehPaginaCarrinho: true,
      ),
    );
  }
}
