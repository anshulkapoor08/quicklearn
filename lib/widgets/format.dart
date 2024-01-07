import 'package:flutter/material.dart';

class Format extends StatefulWidget {
  const Format({super.key});

  @override
  State<Format> createState() => _FormatState();
}

class _FormatState extends State<Format> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text('Clonning', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white,),
        ),),
    );
  }
}
