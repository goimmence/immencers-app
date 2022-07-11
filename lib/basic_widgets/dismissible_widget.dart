import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> superHeros = ["Batman", "Superman", "Flash", "Black-adam"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
      ),
      body: ListView.builder(
          itemCount: superHeros.length,
          itemBuilder: (context, index) {
            final superHero = superHeros[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(superHeros[index]),
                      backgroundColor: Colors.red));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(superHeros[index]),
                      backgroundColor: Colors.green));
                }
              },
              key: Key(superHero),
              background: Container(color: Colors.red),
              secondaryBackground: Container(color: Colors.green),
              child: Card(
                child: ListTile(
                  title: Text(superHeros[index]),
                ),
              ),
            );
          }),
    );
  }
}
