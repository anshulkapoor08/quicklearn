import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.green.shade300,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(20),
                  // color: Colors.redAccent,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/A._P._J._Abdul_Kalam.jpg/1200px-A._P._J._Abdul_Kalam.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ), 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr A.P.J Abdul Kalam',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'kalam18@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder,
                  color: Colors.black,
                ),
                title: Text(
                  'My Files',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: Colors.black,
                ),
                title: Text(
                  'Shared with me',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                title: Text(
                  'Starred',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
                title: Text(
                  'Trash',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.upload,
                  color: Colors.black,
                ),
                title: Text(
                  'Uploads',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'My Account',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
                title: Text(
                  'Share',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text(
                  'Exit',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Drawer Widget',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Kapoor Private Limited',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
