import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Column', style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.white,
        ),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        height: h,
        width: w,
        color:  Colors.green.shade200,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container( height: 70, width: 70, color:  Colors.blue,),
              Container( height: 70, width: 70, color:  Colors.purpleAccent,),
              Container( height: 70, width: 70, color:  Colors.red,),
              Container( height: 70, width: 70, color:  Colors.lightGreen,),
              Container( height: 70, width: 70, color:  Colors.brown,),
            ],
          ),
        ),
    );
  }
}
