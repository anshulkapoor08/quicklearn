import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Mango', 'Banana', 'Guavava', 'Cherry', 'Apple'];
    Map fruitsPerson = {
      'fruits': ['Mango', 'Banana', 'Guavava', 'Cherry', 'Apple'],
      'names': ['Mamta', 'Ballu', 'Gunendra', 'Chetan', 'Anshul']
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List and Grid',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 20,
        backgroundColor: Colors.teal.shade500,
      ),
      body: Container(

        /*
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,
            ),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(
                    fruits[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            }
           ),
      */


        child: ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context,index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    print((fruitsPerson['fruits'][index]));
                  },
                  leading: const Icon(Icons.person),
                  textColor: Colors.amber,
                  tileColor: Colors.blueGrey.shade800,
                  title: Text(fruitsPerson['fruits'][index],
                    style: const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(fruitsPerson['names'][index]),
                ),
              );
            },
        ),


        /*
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
          children: [
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Card(
              child: Center(
                child: Text('Kapoor', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
          ],
        ),
        */
      ),
    );
  }
}
