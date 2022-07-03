import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var __piadas = [
    "O que o pato disse para a pata?\nR.: Vem Quá",
    "Porque o menino estava falando ao telefone deitado?\nR.: Para não cair a ligação.",
    "Qual é a fórmula da água benta?\nR.: H Deus O!",
    "Era uma vez um pintinho que se chama Relam. Toda vez que chovia, Relam piava!",
    "Qual é a cidade brasileira que não tem táxi?\nR.: Uberlândia.",
    "Porque o jacaré tirou o filho da escola?\nR.: Porque ele réptil de ano."
  ];

  var _piadaAleatoria = "Clique abaixo para gerar uma piada";

  void _gerarPiadas() {
    var numeroSorteado = Random().nextInt(__piadas.length);
    setState(() {
      _piadaAleatoria = __piadas[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IsJoke",
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Image.asset("assets/logo.png"),
            Text(
              _piadaAleatoria,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: Colors.black),
            ),
            ElevatedButton(
              onPressed: _gerarPiadas,
              child: Text("Sorria!"),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,      
              ),
            ),
              // TextButton(
              //   style: TextButton.styleFrom(
              //     textStyle: const TextStyle(fontSize: 20),  
              //   ),
              //   onPressed: () {},
              //   child: const Text('Para voltar clique aqui'),
              // ),
          ],
        ),
      ),
    );
  }
}
