import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/alert_widget.dart';
import 'package:flutter_basic/widgets/list_and_grid.dart';
import 'package:flutter_basic/widgets/row_and_column.dart';
import 'package:flutter_basic/widgets/snackbar_widget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  List<Widget> widgets = [
    const Text('Home'),
    const Text('Search'),
    const Text('Add'),
    const Text('Profile'),
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Widget'),
      ),
      body: PageView(
        controller: pageController,
        children: const [
          AlertWidget(),
          SnackBarWidget(),
          RowAndColumn(),
          ListAndGrid(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
