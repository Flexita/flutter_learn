/*
 * @Author: Bryce
 * @Date: 2022-07-22 17:13:24
 * @LastEditTime: 2022-07-25 08:44:42
 * @LastEditors: Bryce
 * @Description: 底部导航
 */

import 'package:flutter/material.dart';
import 'package:new_app/widgets/layout_demo.dart';
import 'package:new_app/widgets/page_demo.dart';

class BottomNavigatorViwe extends StatefulWidget {
  const BottomNavigatorViwe({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorViwe> createState() => _BottomNavigatorViweState();
}

class _BottomNavigatorViweState extends State<BottomNavigatorViwe> {
  int _currentNav = 0;
  List<Widget> widgets = [PageDemo(), LayoutDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('底部菜单'),
      //   centerTitle: true,
      // ),
      body: IndexedStack(
        index: _currentNav,
        children: widgets,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed, // 底部导航超过四个要添加type属性
      //   currentIndex: _currentNav,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '首页',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_comment_rounded),
      //       label: '发布',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: '我的',
      //     ),
      //   ],
      //   onTap: (v) {
      //     setState(() {
      //       _currentNav = v;
      //     });
      //   },
      // ),

      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            SizedBox(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('object');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PublishPage extends StatelessWidget {
  const PublishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('发布'),
    );
  }
}
