import 'package:flutter/material.dart';
import 'package:smart_plate/dados/gerir_dados.dart';
import 'package:smart_plate/receita/minhas_receitas.dart';
import 'package:provider/provider.dart';

class RecForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String?> _formData = {};

  void _loadFormData(Receita receita) {
    _formData['id'] = receita.id;
    _formData['nome'] = receita.nome;
    _formData['ingredientes'] = receita.ingredientes;
  }

  @override
  Widget build(BuildContext context) {
    final Receita? receita =
        ModalRoute.of(context)!.settings.arguments as Receita?;

    if (receita != null) {
      _loadFormData(receita);
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Formulário Receitas'),
          actions: <Widget>[
            IconButton(
                //Botao que atualiza ou adiciona itens a "Receita"
                onPressed: () {
                  if (_form.currentState != null) {
                    _form.currentState!.save();
                    print(_formData);
                  }
                  Navigator.pop(context, '/minhasReceitas'); //route
                  Provider.of<Receitas>(context, listen: false).put(Receita(
                      id: _formData['id'] ?? '',
                      nome: _formData['nome'] ?? '',
                      ingredientes: _formData['ingredientes'] ?? ''));
                },
                icon: const Icon(Icons.save))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
                //Como se apresenta o Formulário
                key: _form,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: _formData['nome'],
                      decoration:
                          const InputDecoration(labelText: 'Nome da Receita'),
                      onSaved: (value) => _formData['nome'] = value!,
                    ),
                    TextFormField(
                      initialValue: _formData['ingredientes'],
                      decoration: const InputDecoration(
                          labelText: 'Ingedrientes Necessários'),
                      onSaved: (value) => _formData['ingredientes'] = value!,
                    ),
                  ],
                ))));
  }
}
