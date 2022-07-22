/*
 * @Author: Bryce
 * @Date: 2022-07-22 15:38:45
 * @LastEditTime: 2022-07-22 17:16:50
 * @LastEditors: Bryce
 * @Description: AppBar
 */

import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  const PageDemo({Key? key}) : super(key: key);

  @override
  State<PageDemo> createState() => _PageDemoState();
}

class _PageDemoState extends State<PageDemo>
    with SingleTickerProviderStateMixin {
  List<String> tabs = ['Flutter', 'Android', 'IOS'];

  late TabController _tabController;
  int _tabState = 0;

  List<Widget> widgets = [FlutterPage(), AndroidPage(), IOSPage()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: tabs.length,
      vsync: this,
      initialIndex: _tabState,
    );
    // _tabController.addListener(() {
    //   print('vvvvvvvvvv');
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              print('shopping_cart');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        title: const Text('AppBar'),
        centerTitle: true,
        elevation: 5,
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
          onTap: (v) {
            setState(() {
              _tabState = v;
            });
            print('vvvvvvvvvv');
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: widgets,
      ),
      drawer: const DrawerView(),
    );
  }
}

class FlutterPage extends StatelessWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Flutter'),
    );
  }
}

class AndroidPage extends StatelessWidget {
  const AndroidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Android'),
    );
  }
}

class IOSPage extends StatelessWidget {
  const IOSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('IOS'),
    );
  }
}

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text('avatar'),
            )
          ],
        ),
      ),
    );
  }
}
