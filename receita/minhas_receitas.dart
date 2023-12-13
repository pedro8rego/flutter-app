import 'package:flutter/material.dart';
import 'package:smart_plate/dados/gerir_dados.dart';
import 'package:smart_plate/receita/tile_receitas.dart';
import 'package:provider/provider.dart';

class MinhasReceitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final receitasProvider = Provider.of<Receitas>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista de Receitas'),
        backgroundColor: Colors.amber[700],
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/formulario_receitas'); //route
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount:
              receitasProvider.count, //chama o "get count" de "gerir_dados"
          itemBuilder: (context, index) => Tile(receitasProvider.all
              .elementAt(index))), //chama o metodo "all" de "gerir_dados"
    );
  }
}

class Receita {
  //classe receita
  final String id;
  final String nome;
  final String ingredientes;

  const Receita({
    //construtor
    required this.id,
    required this.nome,
    required this.ingredientes,
  });
}
