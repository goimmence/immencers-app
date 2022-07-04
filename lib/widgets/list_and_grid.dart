import 'package:flutter/material.dart';

class ListAndGrid extends StatefulWidget {
  const ListAndGrid({Key? key}) : super(key: key);

  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

class _ListAndGridState extends State<ListAndGrid> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List and Grid"),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text("Apple"),
                subtitle: Text("10"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Apple"),
                subtitle: Text("10"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Apple"),
                subtitle: Text("10"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
