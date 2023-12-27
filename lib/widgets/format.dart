import 'package:flutter/material.dart';

class Format extends StatelessWidget {
  const Format({super.key});

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
