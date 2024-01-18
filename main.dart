import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_plate/contactos.dart';
import 'package:smart_plate/dados/gerir_dados.dart';
import 'package:smart_plate/home.dart';
import 'package:smart_plate/lista_compras/gerir_compras.dart';
import 'package:smart_plate/lista_compras/lista_compras.dart';
import 'package:smart_plate/receita/formulario_receitas.dart';
import 'package:smart_plate/receita/minhas_receitas.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Receitas()),
      ChangeNotifierProvider(create: (context) => Compras()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        //lista de routes
        '/': (context) => const Home(),
        '/minhasReceitas': (context) => MinhasReceitas(),
        '/formulario_receitas': (context) => RecForm(),
        '/contactos': (context) => Contactos(),
        '/lista_compras': (context) => Lista_compras(),
      },
    );
  }
}
