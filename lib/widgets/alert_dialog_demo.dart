/*
 * @Author: Bryce
 * @Date: 2022-07-25 11:17:44
 * @LastEditTime: 2022-07-25 12:09:21
 * @LastEditors: Bryce
 * @Description: 弹窗
 */

import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({Key? key}) : super(key: key);

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  List<int> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 50; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: _showDialog,
              label: const Text('弹窗'),
              icon: const Icon(Icons.show_chart),
            ),
            ElevatedButton.icon(
              onPressed: _showListDialog,
              label: const Text('Listd Dialog'),
              icon: const Icon(Icons.list_outlined),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog() async {
    var result = await showDialog(
      context: context,
      barrierDismissible: false, // 点击空白区关闭
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('弹窗标题'),
          content: const Text('内容区'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('Submit');
              },
              child: const Text('Submit'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('Cancel');
              },
              child: const Text('Cancel'),
            )
          ],
        );
      },
    );
    print(result);
  }

  void _showListDialog() async {
    var result = await showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.amber[100],
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('List Dialog'),
          children: list
              .map(
                (e) => GestureDetector(
                  child: Text(e.toString()),
                  onTap: () {
                    Navigator.of(context).pop(e.toString());
                  },
                ),
              )
              .toList(),
        );
      },
    );
    print(result);
  }
}
