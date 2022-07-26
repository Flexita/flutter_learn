/*
 * @Author: Bryce
 * @Date: 2022-07-25 10:55:32
 * @LastEditTime: 2022-07-25 11:16:55
 * @LastEditors: Bryce
 * @Description: 网格布局
 */

import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 主轴个数
          mainAxisSpacing: 2, // 主轴间距
          crossAxisSpacing: 2, // 交叉轴间距
          mainAxisExtent: 70, // 高度
        ),
        scrollDirection: Axis.vertical, // 主轴方向
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.red,
            child: const Icon(Icons.account_balance_outlined),
          ),
          Container(
            color: Colors.orange,
            child: const Icon(Icons.backup_sharp),
          ),
          Container(
            color: Colors.yellow,
            child: const Icon(Icons.cake_sharp),
          ),
          Container(
            color: Colors.green,
            child: const Icon(Icons.dashboard),
          ),
          Container(
            color: Colors.cyan,
            child: const Icon(Icons.edgesensor_low_outlined),
          ),
          Container(
            color: Colors.blue,
            child: const Icon(Icons.fastfood),
          ),
          Container(
            color: Colors.purple,
            child: const Icon(Icons.gavel_rounded),
          ),
        ],
      ),
    );
  }
}
