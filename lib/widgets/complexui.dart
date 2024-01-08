import 'package:flutter/material.dart';

class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(
          Icons.arrow_back_ios,

        ),
        title: Text('Kapoor.s',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
               )),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 190,
              // color: Colors.teal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    //  color: Colors.blue.shade700,
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/p1.jpg'),
                          radius: 55,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Kapoor.s',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Photographer/India')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '150',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'post',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '5K',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'followers',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '100',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'following',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Follow'),

                                    ),
                                    height: 40,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                 margin: EdgeInsets.only(right: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle, border: Border.all(width: 2,color: Colors.blue),
                                  ),
                                  child: Icon(Icons.arrow_downward,color: Colors.blue,),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      // color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 130,
             // color: Colors.purpleAccent,
              child: ListView.builder(
                itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/kp2.jpg'),fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.white60
                          ),
                        ),
                        Text('Highlight'),
                      ],
                    );
                  }),
            ),
            Expanded(
                child: Container(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(4),
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/kapoor.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    
                  ),
                );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
