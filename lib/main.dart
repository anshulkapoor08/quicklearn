import 'package:amk/widgets/container_sized.dart';
import 'package:amk/widgets/rowscol.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: myApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        brightness: Brightness.dark,
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: RowsCols(),
    );
  }
}
