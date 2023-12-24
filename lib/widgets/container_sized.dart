import 'package:flutter/material.dart';

class Cnt extends StatelessWidget {
  const Cnt ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container and sized box'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 5,
                color: Colors.white30,
              )
            ],
            color: Colors.purpleAccent,
          ),
         // color: Colors.purpleAccent,
          child: Center(
            child: Container( height: 100, width: 100,
            decoration: BoxDecoration(
                color: Colors.teal,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  color: Colors.black38
                )
              ]
            ),
            // Text("Kapoor", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),
            ),
          ),
        ),
      ),
    );
  }
}

