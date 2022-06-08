import 'dart:convert';

import 'package:flutter/material.dart';

import 'es_text/es_ordinary_text.dart';

class TestArray extends StatelessWidget {
  // const Test2({Key? key}) : super(key: key);

  List<Widget> list = [];
  List list2 = [];
  List parentList = [];
  String prefix = '';
  int n = 0;
  int n2 = 0;
  String result = """[
    {
      "id":1,
      "title":"t1",
      "pid":"0"
    },
    {
      "id":2,
      "title":"tt1",
      "pid":"1"
    },
    {
      "id":3,
      "title":"tt2",
      "pid":"1"
    },
    {
      "id":4,
      "title":"t1",
      "pid":"0"
    },
    {
      "id":5,
      "title":"tt3",
      "pid":"4"
    },
    {
      "id":6,
      "title":"ttt1",
      "pid":"5"
    },
    {
      "id":7,
      "title":"tttt1",
      "pid":"6"
    },
    {
      "id":8,
      "title":"ttttt1",
      "pid":"7"
    }
  ] """;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: test(),
    );
  }

  test() {
    var decodeResult = json.decode(result);

    for (int i = 0; i < decodeResult.length; i++) {
      prefix = "";
      n = 0;
      list2.add(decodeResult[i]);

      if (decodeResult[i]['pid'] == "0") {
        parentList.add(decodeResult[i]);

        list.add(EsOrdinaryText(data: decodeResult[i]['title']));
      } else {
        // recursive(decodeResult[i]);
        list.add(EsOrdinaryText(data: recursive(decodeResult[i])));
      }
    }

    parentList = [];
    return list;
  }
  recursive(input) {
    n2 = list2.length - 1;

    if (parentList.toString().contains(input['pid'])) {
      int n = parentList.length - 1;

      if (parentList[n]['pid'] == '0') {
        prefix = "-" + prefix;
        return prefix + input['title'];
      } else {
        int n = parentList.length - 1;
        return recursive2(input['title'], n);
      }
    } else {
      prefix = "-" + prefix;
      parentList.add(list2[n2 - 1]);
      return recursive(input);
    }
  }
  recursive2(input2, n) {
    n = n - 1;
    prefix = "-" + prefix;

    if (parentList[n]['pid'] == '0') {
      return prefix + input2;
    } else {
      return recursive2(input2, n);
    }
  }
}
