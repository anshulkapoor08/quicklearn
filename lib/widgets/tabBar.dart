import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade700,
            title: Text(
              'TabBar View',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'CHATS',
                ),
                Tab(
                  icon: Icon(Icons.signal_wifi_statusbar_4_bar_sharp),
                  text: 'STATUS',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'CALLS',
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'CHATS',
                ),
                Tab(
                  icon: Icon(Icons.signal_wifi_statusbar_4_bar_sharp),
                  text: 'STATUS',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'CALLS',
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'CHATS',
                ),
                Tab(
                  icon: Icon(Icons.signal_wifi_statusbar_4_bar_sharp),
                  text: 'STATUS',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'CALLS',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Text(
                    'Chats shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Status shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Calls shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Chats shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Status shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Calls shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ), Container(
                child: Center(
                  child: Text(
                    'Chats shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Status shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Calls shown here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
