// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  var nomeController = TextEditingController();
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  
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
          TextFormField(
            controller: nomeController,
            cursorColor: Color.fromARGB(255, 0, 26, 255),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: "Type your name",
              label: Text("Type your name"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20),

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

          SizedBox(height: 20),
          
          TextFormField(
            cursorColor: Color.fromARGB(255, 0, 26, 255),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.calendar_month_outlined),
              hintText: "Type your birth",
              label: Text("Type your birth"),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900,1,1),
              lastDate: DateTime.now(),
              );
            },
          ),

     

          SizedBox(height: 20),


          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              print("The button has pressed");
              print(nomeController.text);
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