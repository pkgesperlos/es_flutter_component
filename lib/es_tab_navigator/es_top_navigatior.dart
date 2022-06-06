import 'package:flutter/material.dart';

class EsTopNavigator extends StatefulWidget {
  final List<Widget> pagesContentList;
  final List<Tab> tabBarItemList;
  ///how to create
  // List<Tab> tabBarItemList = <Tab>[
  //   new Tab(
  //     text: "STATISTICS",
  //     icon: new Icon(Icons.show_chart),
  //   ),
  //   new Tab(
  //     text: "HISTORY",
  //     icon: new Icon(Icons.history),
  //   ),
  //   new Tab(
  //     text: "STATISTICS",
  //     icon: new Icon(Icons.show_chart),
  //   ),
  //   new Tab(
  //     text: "HISTORY",
  //     icon: new Icon(Icons.history),
  //   ),
  // ];

  EsTopNavigator(
      {required this.pagesContentList, required this.tabBarItemList});

  @override
  State<StatefulWidget> createState() {
    return _EsTopNavigator();
  }
}

class _EsTopNavigator extends State<EsTopNavigator>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, length: widget.tabBarItemList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        bottom: new TabBar(
          tabs: widget.tabBarItemList,
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        children: widget.pagesContentList,
        controller: _tabController,
      ),
    );
  }
  // List<Tab> tabBarItemList = <Tab>[
  //   new Tab(
  //     text: "STATISTICS",
  //     icon: new Icon(Icons.show_chart),
  //   ),
  //   new Tab(
  //     text: "HISTORY",
  //     icon: new Icon(Icons.history),
  //   ),
  //   new Tab(
  //     text: "STATISTICS",
  //     icon: new Icon(Icons.show_chart),
  //   ),
  //   new Tab(
  //     text: "HISTORY",
  //     icon: new Icon(Icons.history),
  //   ),
  // ];
}
