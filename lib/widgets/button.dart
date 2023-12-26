import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        backgroundColor: Colors.deepPurple.shade500,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  elevation: MaterialStateProperty.all(30),
                  overlayColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                ),
                onPressed: () {},
                child: Text(
                  'Press me',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor)),
                  onPressed: () {
                    print('Elevated Button');
                  },
                  child: Text(
                    'Like me',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
