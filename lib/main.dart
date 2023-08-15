// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'counter.dart';
import 'home.dart';
import 'like.dart';
import 'singup.dart';

void main() {
  runApp(Meuapp());
}

class Meuapp extends StatelessWidget {
  const Meuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/singup': (context) => Singup(),
      },
      theme: ThemeData.dark(),
    );
  }
}



