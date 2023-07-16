import 'package:flutter/material.dart';
import 'anasayfa.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        title: "Hesap Makinesi",
        home: Iskele());
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
        foregroundColor:  Colors.deepPurple[50],
        backgroundColor: Colors.deepPurpleAccent[100],
      ),
      body: AnaEkran(),
    );
  }
}

