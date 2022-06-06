import 'package:flutter/material.dart';

class EsBottomNavigator extends StatefulWidget {
  final List<Widget> pagesContentList;
  final List<BottomNavigationBarItem> tabBarItemList;
  //how to create
  // List<BottomNavigationBarItem> bottomNavigationBarItems = [
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.home),
  //     label: 'Home',
  //     backgroundColor: Colors.red,
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.business),
  //     label: 'Business',
  //     backgroundColor: Colors.green,
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.school),
  //     label: 'School',
  //     backgroundColor: Colors.purple,
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.settings),
  //     label: 'Settings',
  //     backgroundColor: Colors.pink,
  //   ),
  // ];

  const EsBottomNavigator(
      {Key? key, required this.pagesContentList, required this.tabBarItemList})
      : super(key: key);

  @override
  State<EsBottomNavigator> createState() => _EsBottomNavigator();
}

class _EsBottomNavigator extends State<EsBottomNavigator> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.pagesContentList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: widget.tabBarItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
  // List<BottomNavigationBarItem> bottomNavigationBarItems = [
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.home),
  //     label: 'Home',
  //     backgroundColor: Colors.red,
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.business),
  //     label: 'Business',
  //     backgroundColor: Colors.green,
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.school),
  //     label: 'School',
  //     backgroundColor: Colors.purple,
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.settings),
  //     label: 'Settings',
  //     backgroundColor: Colors.pink,
  //   ),
  // ];
}
