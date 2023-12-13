import 'package:flutter/material.dart';
import 'package:smart_plate/dados/gerir_dados.dart';
import 'package:smart_plate/receita/minhas_receitas.dart';
import 'package:provider/provider.dart';

class Tile extends StatelessWidget {
  final Receita receita;

  const Tile(this.receita);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(receita.nome),
      trailing: SizedBox(
        width: 100,
        child: Row(children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/formulario_receitas', //route
                arguments: receita,
              );
            },
            icon: const Icon(Icons.edit),
            color: Colors.blue[200],
          ),
          IconButton(
            onPressed: () {
              Provider.of<Receitas>(context, listen: false).remove(receita);
            },
            icon: const Icon(Icons.delete),
            color: Colors.red,
          ),
        ]),
      ),
    );
  }
}
