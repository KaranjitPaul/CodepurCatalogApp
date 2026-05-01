import 'package:app_new/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Catalog App", style: TextStyle(color: Colors.white, )),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by " + name),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
