import 'package:flutter/material.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class EsSlideIndicator extends StatefulWidget {
  List<Widget> items;
  EsSlideIndicator({Key? key,required this.items}) : super(key: key);

  @override
  _EsSlideIndicator createState() => _EsSlideIndicator();
}

class _EsSlideIndicator extends State<EsSlideIndicator> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            children: widget.items,
            controller: _controller,
          ),
        ),
        ScrollingPageIndicator(
          dotColor: Colors.grey,
          dotSelectedColor: Colors.deepPurple,
          dotSize: 6,
          dotSelectedSize: 8,
          dotSpacing: 12,
          controller: _controller,
          itemCount: widget.items.length,
          orientation: Axis.horizontal,
        ),
      ],
    );
  }
  // Widget buildPage(String text, Color color) {
  //   return Padding(
  //     padding: EdgeInsets.all(12),
  //     child: Container(
  //       color: color,
  //       child: Center(
  //         child: Text(
  //           text,
  //           style: TextStyle(fontSize: 42, color: Colors.white),
  //         ),
  //       ),
  //     ),
  //   );
  // }
// List<Widget> items = [
  //   buildPage("0", Colors.red),
  //   buildPage("1", Colors.blue),
  //   buildPage("2", Colors.green),
  //   buildPage("3", Colors.amber),
  //   buildPage("4", Colors.deepPurple),
  //   buildPage("5", Colors.teal),
  //   buildPage("6", Colors.pink),
  //   buildPage("7", Colors.brown)
  // ];
  // Widget buildPage(String text, Color color) {
  //   return Padding(
  //     padding: EdgeInsets.all(12),
  //     child: Container(
  //       color: color,
  //       child: Center(
  //         child: Text(
  //           text,
  //           style: TextStyle(fontSize: 42, color: Colors.white),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
