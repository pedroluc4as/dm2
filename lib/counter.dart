// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class _ContadorState extends State<Contador> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text("COUNTER"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              x.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 70,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x + 1;
                    });
                  },
                  child: Text("+1"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x - 1;
                    });
                  },
                  child: Text("-1"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x + 100;
                    });
                  },
                  child: Text("+100"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 255, 0)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x - 100;
                    });
                  },
                  child: Text("-100"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 0, 0)),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = 0;
                });
              },
              child: Text("RESET"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(0, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
  }