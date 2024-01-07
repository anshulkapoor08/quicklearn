import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Text('Stack Widget', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,),
        ),),
      body: Stack(
        children: [
          Positioned(child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/kp3.jpeg'),
                 fit: BoxFit.cover,
               )
             ),
          )),
          Positioned(
              height: 300,
              width: 300,
              top: 460,
              left: 125,
              child: Container(decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/kp2.jpg')
            )
          ),))
        ],
      )
      /*
      Container(
        //padding: EdgeInsets.all(20),
        color: Colors.blueGrey.shade400,
        child: Center(
          child: Stack(
            children: [
              Center(
                child:
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.greenAccent,
                  ),
              ),
              Positioned(
                top: 80,
                right: 30,
                child:  Container(
                  height: 200,
                  width: 200,
                  color: Colors.blueAccent,
                ),
              ),
             Positioned(
               left: 20,
                top: 450,
                child:  Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
              ),],
          ),
        ),
      ), */
    );
  }
}
