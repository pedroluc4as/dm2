// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  bool curtiu = false;
  int x = 0;

  @override
  Widget build(BuildContext context) {
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
              ? Icon(Icons.favorite, color: Colors.red,)
              : Icon(Icons.favorite_outline, color: Colors.white),
                  color: curtiu == true ? Colors.red : Colors.white,
              onPressed: () {
                setState(() {
                  curtiu = true;
                  x = x + 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}