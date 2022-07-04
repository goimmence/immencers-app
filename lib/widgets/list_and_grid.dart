import 'package:flutter/material.dart';

class ListAndGrid extends StatefulWidget {
  const ListAndGrid({Key? key}) : super(key: key);

  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

class _ListAndGridState extends State<ListAndGrid> {
  List<String> superHeros = ["Batman", "Superman", "Flash", "Black-adam"];
  Map superVillains = {
    "heros": ["Batman", "Superman", "Flash", "Black-adam"],
    "villains": ["Joker", "Doomsday", "Re-Flash", "Gods"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List and Grid"),
          backgroundColor: Colors.red,
          elevation: 8,
        ),
        body: Container(
          // child: ListView.builder(
          //   itemCount: superHeros.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //         onTap: () {
          //           debugPrint(superVillains["villains"][index]);
          //         },
          //         leading: const Icon(Icons.person),
          //         title: Text(
          //           superVillains["heros"][index],
          //         ),
          //         subtitle: Text(
          //           superVillains["villains"][index],
          //         ),
          //       ),
          //     );
          //   },
          // ),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 2 / 4),
            children: const [
              Card(
                child: Center(
                  child: Text("Apple"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("Apple"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("Apple"),
                ),
              ),
            ],
          ),
        ));
  }
}
