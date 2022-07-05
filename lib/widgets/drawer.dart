import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Batman_20190116_5c3fc4b40faec2.47318964.jpg?itok=u4BHrDeE"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "BATMAN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "dccomics@gmail",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              const ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.group),
                title: Text("Shared with me"),
              ),
              const ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              const ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              const ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.upload),
                title: Text("Upload"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: const Center(
          child: Text("Hello, World!"),
        ),
      ),
    );
  }
}
