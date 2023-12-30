import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _FormatState();
}

class _FormatState extends State<DropDownWidget> {
  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Widget', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,),),
        backgroundColor: Colors.pink.shade700,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.greenAccent.shade200,

              height: 50,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey.shade200,
                isExpanded: true,
                value: selectedValue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                items: <String> [ 'Orange','Anshul', 'Kapoor','Kajal','Gera'
                ].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem <String>(
                        value: value,
                        child: Text(value));
                }).toList(),

                  onChanged: (String? newvalue) {
                  setState(() {
                    selectedValue = newvalue!;
                  });
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
