// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Sperandio"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.exposure_plus_1,
              size: 36,
              color: Color.fromARGB(255, 136, 255, 0),
            ),
            title: Text("Counter"),
            subtitle: Text(""),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/contador');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              size: 36,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            title: Text("Like"),
            subtitle: Text(""),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/curtir');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.fact_check_outlined,
              size: 36,
              color: Color.fromARGB(255, 0, 26, 255),
            ),
            title: Text("Sing Up"),
            subtitle: Text(""),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/singup');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.login,
              size: 36,
              color: Color.fromARGB(255, 255, 230, 0),
            ),
            title: Text("Login"),
            subtitle: Text(""),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
