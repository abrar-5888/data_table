import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var coloumn = ["Abrar", 'Asim', 'Soban', 'Naeem', 'Zain'];
    var row = ["pass", "fail", "pass", "pass", "fail"];
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Data Table',
            ),
            backgroundColor: Colors.redAccent[400],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Flexible(
              child: DataTable(
                  columnSpacing: 90,
                  // headingRowColor:
                  //     MaterialStateProperty.resolveWith((states) => Colors.black),
                  headingTextStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.black),
                  border: TableBorder(
                      verticalInside: BorderSide(width: 1, color: Colors.black),
                      horizontalInside:
                          BorderSide(width: 1, color: Colors.amber)),
                  dataTextStyle: TextStyle(fontSize: 20, color: Colors.black87),
                  columns:
                      coloumn.map((e) => DataColumn(label: Text(e))).toList(),
                  rows: row
                      .map((e) => DataRow(
                          cells: row.map((e) => DataCell(Text(e))).toList()))
                      .toList()),
            ),
          )),
    );
  }
}
