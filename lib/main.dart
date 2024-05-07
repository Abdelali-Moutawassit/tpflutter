import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(child: Text("Le contenu de la page")),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      drawer: Drawer(
        child: ListView(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/lion.png"),
              radius: 50,
            ),
            ListTile(
              title: Text(
                "element 1 ",
              ),
            ),
            ListTile(
              title: Text("element 2 "),
            ),
            ListTile(
              title: Text("element 3 "),
            )
          ],
        ),
      ),
    );
  }
}
