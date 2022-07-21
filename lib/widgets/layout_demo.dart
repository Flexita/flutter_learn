/*
 * @Author: Bryce
 * @Date: 2022-07-21 15:43:32
 * @LastEditTime: 2022-07-21 17:20:48
 * @LastEditors: Bryce
 * @Description: 布局Demo
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Layout'),
        centerTitle: true,
      ),
      body: Container(
          color: Colors.grey,
          // child: Column(
          //   children: [
          //     Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: 180,
          //       height: 100,
          //       color: Colors.yellow,
          //     ),
          //     Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
          // child: Row(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   textDirection: TextDirection.rtl,
          //   children: [
          //     Container(
          //       width: 60,
          //       height: 60,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: 120,
          //       height: 120,
          //       color: Colors.yellow,
          //     ),
          //     Container(
          //       width: 60,
          //       height: 60,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
          // 弹性布局——————————————————————————————————————————————————————————
          // child: Flex(
          //   direction: Axis.vertical,
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Expanded(
          //       flex: 1,
          //       child: Container(
          //         width: 60,
          //         height: 60,
          //         color: Colors.red,
          //       ),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: Container(
          //         width: 60,
          //         height: 120,
          //         color: Colors.yellow,
          //       ),
          //     ),
          //     Expanded(
          //       flex: 1,
          //       child: Container(
          //         width: 60,
          //         height: 60,
          //         color: Colors.blue,
          //       ),
          //     ),
          //   ],
          // ),
          // 流式布局——————————————————————————————————————————————————————————————————————
          // child: const WrapLayout(),
          // 层叠布局——————————————————————————————————————————————————————————————————————
          // child: const StackLayout(),
          // 相对定位——————————————————————————————————————————————————————————————————————
          child: const AlignDemo()),
    );
  }
}

// 流式布局
class WrapLayout extends StatefulWidget {
  const WrapLayout({Key? key}) : super(key: key);

  @override
  State<WrapLayout> createState() => _WrapLayoutState();
}

class _WrapLayoutState extends State<WrapLayout> {
  List<int> list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 22; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.end,
      spacing: 5.0,
      runSpacing: 5.0,
      children: list
          .map((e) => Container(
                width: 60,
                height: 60,
                color: Colors.brown,
                child: Text(e.toString()),
              ))
          .toList(),
    );
  }
}

// 层叠布局

class StackLayout extends StatefulWidget {
  const StackLayout({Key? key}) : super(key: key);

  @override
  State<StackLayout> createState() => _StackLayoutState();
}

class _StackLayoutState extends State<StackLayout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.loose,
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          width: 180,
          height: 180,
          color: Colors.red,
          child: const Text('红的'),
        ),
        Container(
          width: 120,
          height: 120,
          color: Colors.yellow,
          child: const Text('黄的'),
        ),
        Container(
          width: 60,
          height: 60,
          color: Colors.blue,
          child: const Text('蓝的'),
        ),
        Positioned(
          width: 80,
          height: 80,
          child: Container(
            child: Text('Positioned'),
            color: Colors.grey,
          ),
          top: 20,
          right: 20,
          // bottom: 20,
          // left: 20,
        ),
      ],
    );
  }
}

// 相对定位
class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
