import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({Key? key}) : super(key: key);
  @override
  State<FormsWidget> createState() => _FormatState();
}

class _FormatState extends State<FormsWidget> {
  final _formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  //-------------Functions---------------------

  trysubmit(){
    final isvalid = _formKey.currentState!.validate();
    if(isvalid){
      _formKey.currentState!.save();
      return submit();
    }
    else{
      print('Error');
    }
  }
  submit(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: Text(
          'Form Bharlo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),

          child: Form(
            key: _formKey,
            child: SingleChildScrollView(

              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your First Name',
                    ),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your last Name',
                    ),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First last should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                    ),
                    key: ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Email should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                     // obscureText: true,

                    ),
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length<=6) {
                        return 'Password should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  SizedBox(height: 30,),
                  TextButton(onPressed: (){  trysubmit(); }, child: Text('Submit'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
