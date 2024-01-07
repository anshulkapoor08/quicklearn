import 'package:flutter/material.dart';

class UIClone extends StatelessWidget {
  const UIClone({super.key});

  @override
  Widget build(BuildContext context) {
    var h= MediaQuery.of(context).size.height;
    var w= MediaQuery.of(context).size.width;
    return Scaffold( 
    body: Container(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: 500,

                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          //color: Colors.purple.shade400,
                          height: 450,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/ch.webp'),
                                fit: BoxFit.cover,
                                // fit: Boxfit.cover,
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 25,
                        child: CircleAvatar(
                          backgroundImage:AssetImage('assets/p1.jpg'),radius: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
           // color: Colors.red.shade700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Tour for the Designers in Delhi',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Description of the event which will be conducted in Delhi',
                style: TextStyle(fontSize: 15,),),
              ],
            ),
          ),
          Container(
          //  color: Colors.amber.shade900,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                rowIconText('20', Icons.favorite_rounded),
                rowIconText('34', Icons.upload),
                rowIconText('82', Icons.message),
                rowIconText('295', Icons.face),

        ],

      ),
    ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
              child:Text("the creation of natural language texts via computer systems. "
                  "It leverages knowledge in computational linguistics and A")),
    ], ),)
    );
  }
}
Widget rowIconText(String text, IconData icon){
  return Row(
    children: [
      Row(
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(width: 5,),
          Icon(icon),
        ],
      )
    ],
  );
}