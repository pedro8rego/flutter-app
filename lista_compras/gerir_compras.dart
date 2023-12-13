import 'package:flutter/material.dart';
import 'package:smart_plate/lista_compras/dados_compras.dart';
import 'package:smart_plate/lista_compras/lista_compras.dart';

class Compras with ChangeNotifier {
  final Map<String, Compra> _compras = {...Dados_Compras};

  List<Compra> get all {
    return [..._compras.values]; //clone da lista
  }

  int get count {
    //contador
    return _compras.length;
  }
}
