import 'package:flutter/material.dart';

class EsSideNavigator extends StatefulWidget {
  final List<Widget> pagesContentList;
  final List<NavigationRailDestination> tabBarItemList;
  ////how to create
  // List<NavigationRailDestination> tabBarItemList=[
  //   NavigationRailDestination(
  //     icon: Column(
  //       children: [Icon(Icons.favorite_border), Text('Button 1')],
  //     ),
  //     selectedIcon: Container(
  //       color: Colors.green,
  //       child: Column(
  //         children: [Icon(Icons.favorite_border), Text('Button 1')],
  //       ),
  //     ),
  //     label: Text(""),
  //   ),
  //   NavigationRailDestination(
  //     icon: Column(
  //       children: [Icon(Icons.bookmark_border), Text('Button 2')],
  //     ),
  //     selectedIcon: Column(
  //       children: [Icon(Icons.book), Text('2 clicked')],
  //     ),
  //     label: Text(''),
  //   ),
  //   NavigationRailDestination(
  //     icon: Icon(Icons.star_border),
  //     selectedIcon: Icon(Icons.star),
  //     label: Text('Third'),
  //   ),
  // ];

  EsSideNavigator(
      {Key? key, required this.pagesContentList, required this.tabBarItemList})
      : super(key: key);

  @override
  _EsSideNavigator createState() => _EsSideNavigator();
}

class _EsSideNavigator extends State<EsSideNavigator> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SingleChildScrollView(child: NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations:widget.tabBarItemList
          ),) ,

          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child:widget.pagesContentList[_selectedIndex] ,
          )
        ],
      ),
    );
  }
  // List<NavigationRailDestination> tabBarItemList2=[
  //   NavigationRailDestination(
  //     icon: Column(
  //       children: [Icon(Icons.favorite_border), Text('Button 1')],
  //     ),
  //     selectedIcon: Container(
  //       color: Colors.green,
  //       child: Column(
  //         children: [Icon(Icons.favorite_border), Text('Button 1')],
  //       ),
  //     ),
  //     label: Text(""),
  //   ),
  //   NavigationRailDestination(
  //     icon: Column(
  //       children: [Icon(Icons.bookmark_border), Text('Button 2')],
  //     ),
  //     selectedIcon: Column(
  //       children: [Icon(Icons.book), Text('2 clicked')],
  //     ),
  //     label: Text(''),
  //   ),
  //   NavigationRailDestination(
  //     icon: Icon(Icons.star_border),
  //     selectedIcon: Icon(Icons.star),
  //     label: Text('Third'),
  //   ),
  // ];
}
