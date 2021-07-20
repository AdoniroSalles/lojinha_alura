import 'package:flutter/material.dart';
import 'package:loja_alura/pages/carrinho.dart';
import 'package:loja_alura/pages/detalhes.dart';
import 'package:loja_alura/pages/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InicioPage(),
      routes: {
        '/carrinho': (context) => CarrinhoPage(),
        '/detalhes': (context) => DetalhesPage()
      },
    );
  }
}
