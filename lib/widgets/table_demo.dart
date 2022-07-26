/*
 * @Author: Bryce
 * @Date: 2022-07-25 12:18:31
 * @LastEditTime: 2022-07-25 13:08:59
 * @LastEditors: Bryce
 * @Description: 表格
 */
import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  const TableDemo({Key? key}) : super(key: key);

  @override
  State<TableDemo> createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  int _sortColumnIndex = 2;
  bool _sortAscending = false;
  List<Map> list = [];
  @override
  void initState() {
    super.initState();
    for (var i = 1; i <= 12; i++) {
      list.add(
        {
          'name': 'i' * i,
          'gender': i % 2 == 0 ? '男' : '女',
          'select': false,
          'age': i * 3
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        // 基础表格
        // child: Table(
        //   border: TableBorder.all(color: Colors.blueGrey),
        //   children: list
        //       .map(
        //         (e) => TableRow(
        //           children: [
        //             Text(e['name']),
        //             Text(e['gender']),
        //           ],
        //         ),
        //       )
        //       .toList(),
        // ),

        child: DataTable(
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          columns: [
            DataColumn(
              label: const Text('name'),
              onSort: (columnIndex, ascending) {
                setState(() {
                  _sortAscending = ascending;
                  _sortColumnIndex = columnIndex;
                  list.sort((a, b) {
                    if (!ascending) {
                      return b['name'].toString().length -
                          a['name'].toString().length;
                    } else {
                      return a['name'].toString().length -
                          b['name'].toString().length;
                    }
                  });
                });
              },
            ),
            const DataColumn(label: Text('gender')),
            DataColumn(
              label: const Text('age'),
              // 排序
              onSort: (columnIndex, ascending) {
                setState(() {
                  _sortAscending = ascending;
                  _sortColumnIndex = columnIndex;
                  list.sort(((a, b) {
                    if (!ascending) {
                      return b['age'] - a['age'];
                    } else {
                      return a['age'] - b['age'];
                    }
                  }));
                });
              },
            ),
          ],
          rows: list
              .map(
                (e) => DataRow(
                  selected: e['select'],
                  onSelectChanged: (v) {
                    print(e);
                    setState(() {
                      if (e['select'] != v) {
                        e['select'] = v;
                      }
                    });
                  },
                  cells: [
                    DataCell(Text(e['name'])),
                    DataCell(Text(e['gender'])),
                    DataCell(Text(e['age'].toString())),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
