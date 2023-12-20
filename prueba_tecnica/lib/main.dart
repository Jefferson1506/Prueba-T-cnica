// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            "assets/fondo_login.png",
            fit: BoxFit.cover,
          ))
        ],
      )),
    );
  }
}

