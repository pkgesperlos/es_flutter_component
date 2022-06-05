import 'package:flutter/material.dart';

// class EsOrdinaryList extends StatelessWidget {
//   final List<Widget> itemList;
//   final List<Widget> innerItemList;
//   const EsOrdinaryList({Key? key,required this.itemList,required this.innerItemList}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(
//         // prototypeItem: CircularProgressIndicator(),
//         // padding: EdgeInsets.all(20),
//         shrinkWrap: true, //container will be as same size as  listview size
//         itemCount: itemList.length,
//         itemBuilder: (context, index) {
//           return itemList[index];
//         },
//       ),
//     );
//   }
// }




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
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle:
              const Text('To delete this panel, tap the trash can icon'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
