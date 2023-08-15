// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Sing Up"),
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          TextField(
            cursorColor: Color.fromARGB(255, 0, 26, 255),
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: "Type your e-mail"
            ),
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 0, 26, 255),
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "Type your password"
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text("Save"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 26, 255),
            ),
),
          
        ],
      ),
    );
  }
}