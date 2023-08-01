// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String x = "100";
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Aplicativo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x),
            ElevatedButton(
                onPressed: () {
                  print("Antes de Zerar");
                  print(x);
                  x = "0";
                  print("Depois de Zerar");
                  print(x);
                },
                child: Text("Zerar")),
          ],
        ),
      ),
    );
  }
}
