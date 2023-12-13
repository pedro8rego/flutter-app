import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_plate/lista_compras/gerir_compras.dart';
import 'package:smart_plate/lista_compras/tile_compras.dart';

// ignore: camel_case_types
class Lista_compras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final comprasProvider = Provider.of<Compras>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Compras'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: comprasProvider.count, //chama o "get count" de "gerir_dados"
        itemBuilder: (context, index) =>
            Tile2(comprasProvider.all.elementAt(index)),
      ), //chama o metodo "all" de "gerir_dados"
    );
  }
}

class Compra {
  final String id;
  final String nome;

  const Compra({
    required this.id,
    required this.nome,
  });
}
