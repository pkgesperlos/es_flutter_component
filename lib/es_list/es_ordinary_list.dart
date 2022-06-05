import 'package:flutter/material.dart';

class EsOrdinaryList extends StatelessWidget {
  final List<Widget> itemList;
  const EsOrdinaryList({Key? key,required this.itemList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        // prototypeItem: CircularProgressIndicator(),
        // padding: EdgeInsets.all(20),
        shrinkWrap: true, //container will be as same size as  listview size
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return itemList[index];
        },
      ),
    );
  }
}
