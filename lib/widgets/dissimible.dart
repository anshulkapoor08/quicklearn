import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = [
    'Mango',
    'Banana',
    'Guavava',
    'Cherry',
    'Apple',
    'Pomegranate'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.teal,
        title: Text(
          'Dismissible Package',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(

          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fal = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        //duration: Duration(milliseconds: 300),
                        content: Text(fruits[index]),
                        backgroundColor: Colors.red.shade300,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //duration: Duration(milliseconds: 300),
                        content: Text(fruits[index]),
                        backgroundColor: Colors.green.shade300));
                  }
                },
                key: Key(fal),
              background: Container(
                color: Colors.redAccent.shade400,

              ),
              secondaryBackground: Container(color: Colors.green.shade700,),
                child: Card(
                  child: ListTile(
                    tileColor: Colors.blueGrey.shade700,
                    textColor: Colors.amber,
                      leading: const Icon(Icons.person),
                      title: Text(fruits[index], style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,),),),
                ),);
          },),
    );
  }
}
