import 'package:flutter/material.dart';

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class EsAccordionList extends StatefulWidget {
  const EsAccordionList({Key? key}) : super(key: key);

  @override
  State<EsAccordionList> createState() => _EsAccordionList();
}

class _EsAccordionList extends State<EsAccordionList> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return _buildPannel2();
  }

  // Widget _buildPanel() {
  //   return ExpansionPanelList(
  //     expansionCallback: (int index, bool isExpanded) {
  //       setState(() {
  //         _data[index].isExpanded = !isExpanded;
  //       });
  //     },
  //     children: _data.map<ExpansionPanel>((Item item) {
  //       return ExpansionPanel(
  //         headerBuilder: (BuildContext context, bool isExpanded) {
  //           return ListTile(
  //             title: Text(item.headerValue),
  //           );
  //         },
  //         body: ListTile(
  //             title: Text(item.expandedValue),
  //             subtitle:
  //             const Text('To delete this panel, tap the trash can icon'),
  //             trailing: const Icon(Icons.delete),
  //             onTap: () {
  //               setState(() {
  //                 _data.removeWhere((Item currentItem) => item == currentItem);
  //               });
  //             }),
  //         isExpanded: item.isExpanded,
  //       );
  //     }).toList(),
  //   );
  // }
  Widget _buildPannel2(){
    return ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text("Expansion Title"),
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:5,bottom: 5,left: 10,right: 100),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.black54,
                  ),
                ),
                Text("ok"),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:5,bottom: 5,left: 10,right: 100),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.black54,
                  ),
                ),
                Text("ok"),
              ],
            ),],
        )
      ],
    );
  }
}
