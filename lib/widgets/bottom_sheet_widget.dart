import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Theme.of(context).primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              elevation: 0,
              isDismissible: true,
              enableDrag: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    ListTile(
                      title: Text('Flutter'),
                      subtitle: Text('Google'),
                    ),
                    ListTile(
                      title: Text('Dart'),
                      subtitle: Text('Google'),
                    ),
                    ListTile(
                      title: Text('Android'),
                      subtitle: Text('Google'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
