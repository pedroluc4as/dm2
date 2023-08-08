// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
      },
      theme: ThemeData.dark(),
    );
  }
}

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

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("COUNTER and LIKES"),
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
            subtitle: Text("Increment example"),
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
          )
        ],
      ),
    );
  }
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
