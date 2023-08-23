// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          TextFormField(
            controller: emailController,
            cursorColor: Color.fromARGB(255, 0, 26, 255),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              hintText: "Type your e-mail",
              label: Text("Type your e-mail"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20),

          TextFormField(
            controller: senhaController,
            cursorColor: Color.fromARGB(255, 0, 26, 255),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              hintText: "Type your password",
              label: Text("Type your password"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              print("The button has pressed");
              print(emailController.text);
              print(senhaController.text);
            },
            child: Text("Save"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 26, 255),
            ),
),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text("Cancel"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 255, 0, 0),
              
            ),
),
          
        ],
      ),
    );
  }
}