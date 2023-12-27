import 'package:amk/widgets/bottomsheet.dart';
import 'package:amk/widgets/button.dart';
import 'package:amk/widgets/dissimible.dart';
import 'package:amk/widgets/drawer.dart';
import 'package:amk/widgets/list_grid.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => _BottomNavState();
}
class _BottomNavState extends State<BottomNav> {

  int selectedindex = 0;
  PageController pageController = PageController();
  List<Widget> widgets = [
    Text('Home'),
    Text('Setting'),
    Text('Search'),
    Text('Account'),
    Text('Exit'),
  ];
  void onTapped(int index){
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*  appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: Text('Bottom Navigation Widget', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87,),
        ),),*/
      body: PageView(
        controller: pageController,
        children: [
          BottomSheetWidget(),
          DrawerWidget(),
          DismissibleWidget(),
          ListGrid(),
          ButtonWidget(),

        ],
      ),
        /* Center(
          child: widgets.elementAt(selectedindex)
      ),
      */
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Exit'),
      ],
      currentIndex: selectedindex,
        selectedItemColor: Colors.green.shade700,
        unselectedItemColor: Colors.blue.shade900,
        onTap: onTapped,
      ),
    );
  }
}
