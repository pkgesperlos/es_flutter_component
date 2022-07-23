import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_table/responsive_table.dart';



class EsResponsiveTable extends StatefulWidget {
  List<DatatableHeader> headers;
  List<Map<String, dynamic>>? source;
  final bool? sortAscending;
  final bool isLoading;
  final List<bool>? expanded;
  late int total;
  late int? currentPerPage;
  late int? lastPage;
  int currentPage;

  Function(int page)? onNextPressed;
  Function(int page)? onPreviousPressed;
  Function(int page)? onPageSelected;

  EsResponsiveTable(
      {Key? key,
        this.headers = const [],
        this.source,
        this.sortAscending,
        this.isLoading = false,
        this.expanded,
        this.total = 0,
        this.currentPerPage,
        this.currentPage = 1,
        this.lastPage = 1,
        this.onNextPressed,
        this.onPreviousPressed,
        this.onPageSelected,

      })
      : super(key: key);

  @override
  _EsResponsiveTableState createState() => _EsResponsiveTableState();
}

class _EsResponsiveTableState extends State<EsResponsiveTable> {


  late String _dropdownValue;



  late List<DropdownMenuItem<String>> _dropdownItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();



    for(int i = 1; i<= widget.lastPage!; i++)
      _dropdownItems.add(DropdownMenuItem<String>(
        value: i.toString(),
        child: Text(i.toString()),
      ));
  }




  @override
  Widget build(BuildContext context) {

    _dropdownValue = widget.currentPage.toString();

    return ResponsiveDatatable(
      reponseScreenSizes: [ScreenSize.xs],
      headers: widget.headers,
      source: widget.source,
      selecteds: [],
      showSelect: false,
      autoHeight: true,
      onChangedRow: (value, header) {
        /// print(value);
        /// print(header);
      },
      onSubmittedRow: (value, header) {
        /// print(value);
        /// print(header);
      },
      onTabRow: (data) {
        print(data);
      },
      onSort: (value) {
        /*        setState(() => _isLoading = true);

                    setState(() {
                      _sortColumn = value;
                      _sortAscending = !_sortAscending;
                      if (_sortAscending) {
                        _sourceFiltered.sort((a, b) =>
                            b["$_sortColumn"].compareTo(a["$_sortColumn"]));
                      } else {
                        _sourceFiltered.sort((a, b) =>
                            a["$_sortColumn"].compareTo(b["$_sortColumn"]));
                      }
                      var _rangeTop = _currentPerPage! < _sourceFiltered.length
                          ? _currentPerPage!
                          : _sourceFiltered.length;
                      _source = _sourceFiltered.getRange(0, _rangeTop).toList();
                      _searchKey = value;

                      _isLoading = false;
                    });*/
      },
      expanded: widget.expanded,
      sortAscending: true,
      sortColumn: 'id',
      isLoading: widget.isLoading,
      onSelect: (value, item) {
        /*  print("$value  $item ");
                    if (value!) {
                      setState(() => _selecteds.add(item));
                    } else {
                      setState(
                              () => _selecteds.removeAt(_selecteds.indexOf(item)));
                    }*/
      },
      onSelectAll: (value) {
        /*  if (value!) {
                      setState(() => _selecteds =
                          _source.map((entry) => entry).toList().cast());
                    } else {
                      setState(() => _selecteds.clear());
                    }*/
      },
      footers: [

        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
          onPressed: widget.currentPage == 1
              ? null
              : () {
            var _nextSet = widget.currentPage - widget.currentPerPage!;
            widget.currentPage--;
            widget.onPreviousPressed!(widget.currentPage);

            /*    setState(() {
                          _currentPage = _nextSet > 1 ? _nextSet : 1;
                          _resetData(start: _currentPage - 1);
                        });*/

            print(_nextSet);
          },
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        DropdownButton<String>(
          value: _dropdownValue,
          icon: const Icon(Icons.arrow_drop_up),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              _dropdownValue = newValue!;
            });
            widget.onPageSelected!(int.parse(newValue!));
          },
          items: _dropdownItems,
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios, size: 16),
          onPressed: widget.currentPage == widget.lastPage
              ? null
              : () {
            var _nextSet = widget.currentPage + widget.currentPerPage!;
            widget.currentPage++;
            /* setState(() {
                          _isLoading = true;
                        });
*/
            widget.onNextPressed!(widget.currentPage);
          },
          padding: EdgeInsets.symmetric(horizontal: 15),
        )
      ],
      headerDecoration: BoxDecoration(
          color: Colors.grey,
          border: Border(bottom: BorderSide(color: Colors.red, width: 1))),
      selectedDecoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.green[300]!, width: 1)),
        color: Colors.green,
      ),
      headerTextStyle: TextStyle(color: Colors.white),
      rowTextStyle: TextStyle(color: Colors.green),
      selectedTextStyle: TextStyle(color: Colors.white),
    );
  }
}

