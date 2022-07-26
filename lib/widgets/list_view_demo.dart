/*
 * @Author: Bryce
 * @Date: 2022-07-25 08:47:53
 * @LastEditTime: 2022-07-25 10:51:49
 * @LastEditors: Bryce
 * @Description: 列表
 */

import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<int> list = [];
  late ScrollController _listController;
  bool showBtn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 100; i++) {
      list.add(i);
    }
    _listController = ScrollController();
    _listController.addListener(() {
      if (_listController.offset > 100 && !showBtn) {
        setState(() {
          showBtn = true;
        });
      }
      if (_listController.offset <= 100 && showBtn) {
        setState(() {
          showBtn = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _listController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          // child: ListView(
          //   // shrinkWrap: true,
          //   // reverse: true,
          //   // itemExtent: 30,
          //   children: list.map((e) => Text(e.toString())).toList(),
          // ),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            controller: _listController,
            itemBuilder: (BuildContext contextm, int index) {
              if (index % 2 == 0) {
                return const Icon(Icons.abc);
              }
              return Text(list[index].toString());
            },
            itemCount: list.length,
          ),
        ),
      ),
      floatingActionButton: showBtn
          ? FloatingActionButton(
              onPressed: () {
                _listController.animateTo(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              child: const Icon(Icons.backup),
            )
          : null,
    );
  }

  Future _onRefresh() async {
    await Future.delayed(
        const Duration(milliseconds: 500), () => print('refresh'));
  }
}
