import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SmartPlate'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(children: <Widget>[
          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('smartplate.jpeg'))),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/minhasReceitas'); //route
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber[700]),
              ),
              child: const Text('Minhas Receitas')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lista_compras'); //route
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber[700])),
              child: const Text('Lista de Compras')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contactos'); //route
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber[700])),
              child: const Text('Contactos')),
        ]),
      ),
    );
  }
}
