import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: TextButton(
        onPressed: () {
          //redireciona usando rotas nomeadas
          Navigator.pushNamed(context, '/carrinho');
        },
        child: Text('Vai para pagina carrinho'),
      ),
    );
  }
}
