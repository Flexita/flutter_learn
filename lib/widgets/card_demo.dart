// ignore_for_file: dead_code

/*
 * @Author: Bryce
 * @Date: 2022-07-25 14:31:57
 * @LastEditTime: 2022-07-26 09:03:45
 * @LastEditors: Bryce
 * @Description: 卡片
 */

import 'dart:math';

import 'package:flutter/material.dart';

class CardDemo extends StatefulWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  List<Map> list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 30; i++) {
      list.add(
        {'name': '庆$i', 'age': 20 + Random().nextInt(10)},
      );
    }
  }

  Widget _cardItem(BuildContext context, int index) {
    return Card(
      color: Colors.red[50],
      shadowColor: Colors.amber[500],
      elevation: 5,
      child: Column(children: [
        SizedBox(
          height: 8,
        ),
        Text(list[index]['name']),
        SizedBox(
          height: 8,
        ),
        Text(list[index]['age'].toString()),
      ]),
    );
  }

  Widget _cardItemII(BuildContext context, int index) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: Text(list[index]['name'],
              style: TextStyle(color: Colors.cyan[800])),
          tileColor: Colors.grey[500],
          subtitle: Text(list[index]['age'].toString()),
          trailing: const Icon(Icons.unsubscribe_sharp),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          // child: ListView(
          //   children: list
          //       .map((e) => Card(
          //             child: Container(
          //               width: double.infinity,
          //               height: 200,
          //               child: Text(e['name'] + '——' + e['age'].toString()),
          //             ),
          //           ))
          //       .toList(),
          // ),

          // child: ListView.builder(
          //   itemBuilder: _cardItem,
          //   itemCount: list.length,
          // ),

          child: ListView.builder(
            itemBuilder: _cardItemII,
            itemCount: list.length,
          )),
    );
  }
}
