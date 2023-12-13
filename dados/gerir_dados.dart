import 'package:flutter/material.dart';
import 'package:smart_plate/dados/dados_receita.dart';
import 'package:smart_plate/receita/minhas_receitas.dart';

class Receitas with ChangeNotifier {
  final Map<String, Receita> _dados = {...Dados_Receita};

  List<Receita> get all {
    return [..._dados.values]; //clone da lista
  }

  int get count {
    //contador
    return _dados.length;
  }

  void put(Receita receita) {
    //faz alteração atraves do id
    if (receita.id.trim().isNotEmpty && _dados.containsKey(receita.id)) {
      _dados.update(
          receita.id,
          (_) => Receita(
              id: receita.id,
              nome: receita.nome,
              ingredientes: receita.ingredientes));
    } else {
      //adicionar dados
      _dados.putIfAbsent(
          //vai inserir dados caso não sejam dados
          '100',
          () => Receita(
              id: receita.id,
              nome: receita.nome,
              ingredientes: receita.ingredientes));
    }

    notifyListeners(); //notifica o provider que houve mudança;
  }

  void remove(Receita receita) {
    //metodo para remover itens
    print('Removing receita with id: ${receita.id}');
    _dados.remove(receita.id);
    notifyListeners();
  }
}
