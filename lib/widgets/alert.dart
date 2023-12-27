import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text(
          'Alert Box',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () { 
            _showMyDailog(context);
          },
          child: Text('Alert Box'),
        ),
      ),
    );
  }
}

Future<void> _showMyDailog(BuildContext context) async{
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.blueGrey.shade700,
          title: Text('This is an alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Anshul'),
                Text('Kapoor'),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: (){}, child: Text('Approve')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel')),
          ],
        );
      }
  );
}