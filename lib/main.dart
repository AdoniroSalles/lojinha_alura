import 'package:flutter/material.dart';
import 'package:loja_alura/pages/carrinho.dart';
import 'package:loja_alura/pages/detalhes.dart';
import 'package:loja_alura/pages/inicio.dart';
import 'package:loja_alura/paleta_cores.dart';

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
        primarySwatch: PaletaCores().lilas,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: InicioPage(),
      routes: {
        '/carrinho': (context) => CarrinhoPage(),
        '/detalhes': (context) => DetalhesPage()
      },
    );
  }
}
