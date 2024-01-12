import 'package:flutter/material.dart';
class Authenticaton extends StatefulWidget {
  const Authenticaton({super.key});

  @override
  State<Authenticaton> createState() => _AuthenticatonState();
}

class _AuthenticatonState extends State<Authenticaton> {
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
