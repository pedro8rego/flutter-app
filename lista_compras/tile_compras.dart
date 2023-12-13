import 'package:flutter/material.dart';
import 'package:smart_plate/lista_compras/lista_compras.dart';

class Tile2 extends StatelessWidget {
  //widget tile_compras que define como se apresentam os itens
  final Compra compra;

  const Tile2(this.compra);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(compra.nome),
      trailing: SizedBox(
        width: 50,
        child: Row(children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
            color: Colors.red,
          ),
        ]),
      ),
    );
  }
}
