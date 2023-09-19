// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  bool curtiu = false;
  int x = 0;

  @override
  void initState() { //roda na hora que abre
    super.initState();
    obtemValor(); //lê da memória hora que abre 
  }

  void obtemValor() async {
    //busca um valor da memória persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      x = prefs.getInt('counter') ?? 0;
      curtiu = prefs.getBool('curtiu') ?? false;
    });
    
  }

  void salvaValor(int valor, bool curt) async {
    //salva um valor na mémoria persistente
        final prefs = await SharedPreferences.getInstance();
        prefs.setInt('counter', valor);
        prefs.setBool('curtiu', curt);
  }

  @override
   build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("LIKE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Likes: $x",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              iconSize: 100,
              icon: curtiu == true 
              ? Icon(Icons.favorite, color: Colors.red,)//?= IF (SE O VALOR FOR VERDADEIRO)
              : Icon(Icons.favorite_outline, color: Colors.white),//:= ELSE(SE O VALOR FOR)
                  color: curtiu == true ? Colors.red : Colors.white,
              onPressed: () {
                setState(() {
                  curtiu = true;
                  x = x + 1;
                });
                salvaValor(x, curtiu);
              },
            ),
          ],
        ),
      ),
    );
  }
}