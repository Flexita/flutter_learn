/*
 * @Author: Bryce
 * @Date: 2022-07-20 14:29:51
 * @LastEditTime: 2022-07-20 14:51:28
 * @LastEditors: Bryce
 * @Description: 点击事件
 */
import 'package:flutter/material.dart';

class ClickDemo extends StatelessWidget {
  const ClickDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap');
      },
      onDoubleTap: () {
        print('double tap');
      },
      child: Icon(Icons.tag),
    );
  }
}
