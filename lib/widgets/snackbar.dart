import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: Text(
              'SnackBar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          elevation: 15,
        ),
        body: Container(
            child: Center(
          child: Container(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(15),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                backgroundColor:  MaterialStateProperty.all(Colors.blueGrey.shade700)
              ),
              onPressed: () {
                final snackBar = SnackBar(
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.blue,
                      onPressed: (){},
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    behavior: SnackBarBehavior.floating,
                   // padding: EdgeInsets.all(7),
                    duration: const Duration(milliseconds: 500),
                    content:  Text('This is kapoor Pvt. Ltd.', style: TextStyle(
                      fontSize: 15,)));
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                'Kapoor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        )));
  }
}
