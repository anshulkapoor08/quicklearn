import 'package:amk/widgets/alert.dart';
import 'package:amk/widgets/animatedtext.dart';
import 'package:amk/widgets/bottomnav.dart';
import 'package:amk/widgets/bottomsheet.dart';
import 'package:amk/widgets/button.dart';
import 'package:amk/widgets/container_sized.dart';
import 'package:amk/widgets/dissimible.dart';
import 'package:amk/widgets/drawer.dart';
import 'package:amk/widgets/dropdown.dart';
import 'package:amk/widgets/format.dart';
import 'package:amk/widgets/forms.dart';
import 'package:amk/widgets/image.dart';
import 'package:amk/widgets/list_grid.dart';
import 'package:amk/widgets/rowscol.dart';
import 'package:amk/widgets/stack.dart';
import 'package:amk/widgets/tabBar.dart';
import 'package:flutter/material.dart';
import 'package:amk/widgets/snackbar.dart';

void main() {
  runApp(const MaterialApp(
    home: myApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        brightness: Brightness.dark,
        primaryColor: Colors.purpleAccent,
      ),
      home: const TabBarWidget(),
    );
  }
}
