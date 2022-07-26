/*
 * @Author: Bryce
 * @Date: 2022-07-25 15:08:32
 * @LastEditTime: 2022-07-25 15:14:26
 * @LastEditors: Bryce
 * @Description: 性能优化
 */

import 'package:flutter/material.dart';

class PerformanceDemo extends StatefulWidget {
  const PerformanceDemo({Key? key}) : super(key: key);

  @override
  State<PerformanceDemo> createState() => _PerformanceDemoState();
}

class _PerformanceDemoState extends State<PerformanceDemo> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('性能优化'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.yellow,
            child: const CountDemo(),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class CountDemo extends StatefulWidget {
  const CountDemo({Key? key}) : super(key: key);

  @override
  State<CountDemo> createState() => _CountDemoState();
}

class _CountDemoState extends State<CountDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('Click Me $count'),
      onTap: () {
        setState(() {
          count++;
          if (count > 15) {
            print('object' * 50);
          }
        });
      },
    );
  }
}
