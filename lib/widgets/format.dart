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
        backgroundColor: Colors.teal,
        title: Text('Your Title', style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,),
        ),),
    );
  }
}
