// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      supportedLocales: [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates:
      GlobalMaterialLocalizations.delegates,
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/singup': (context) => Singup(),
        '/home':(context) => Home(),
      },
      theme: ThemeData.dark(),
    );
  }
}



