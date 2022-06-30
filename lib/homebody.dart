import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import 'big_title_card.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBody createState() => _HomeBody();
}

class _HomeBody extends State<HomeBody> {
  int _selectedIndex = 0;

  // final TextEditingController _ctrlUsername = TextEditingController();
  // final TextEditingController _ctrlPassword = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 0);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size(double.infinity, 142),
          //   child: CustomSearchAppbar(),
          // ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: Dims.h2Padding(context),
                  left: Dims.h2Padding(context),
                  right: Dims.h2Padding(context),
                  bottom: Dims.h3Padding(context)),
              child: BootstrapContainer(
                  fluid: true,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(10, (index) => BigTitleCard())),
            ),
          ),
        ));
  }


}
