/*
 * @Author: Bryce
 * @Date: 2022-07-19 15:30:06
 * @LastEditTime: 2022-07-26 09:04:17
 * @LastEditors: Bryce
 * @Description: 程序入口
 */

import 'package:flutter/material.dart';
import 'package:new_app/provider/CountProcider.dart';
import 'package:new_app/widgets/alert_dialog_demo.dart';
import 'package:new_app/widgets/button_widget.dart';
import 'package:new_app/widgets/card_demo.dart';
import 'package:new_app/widgets/check_widget.dart';
import 'package:new_app/widgets/click_demo.dart';
import 'package:new_app/widgets/dio_demo.dart';
import 'package:new_app/widgets/form_filed_widget.dart';
import 'package:new_app/widgets/grid_view_demo.dart';
import 'package:new_app/widgets/image_widget.dart';
import 'package:new_app/widgets/layout_demo.dart';
import 'package:new_app/widgets/linear_progress_widget.dart';
import 'package:new_app/widgets/list_view_demo.dart';
import 'package:new_app/widgets/navigator_demo.dart';
import 'package:new_app/widgets/page_demo.dart';
import 'package:new_app/widgets/performance.dart';
import 'package:new_app/widgets/provider_demo.dart';
import 'package:new_app/widgets/table_demo.dart';
import 'package:new_app/widgets/text_widget.dart';
import 'package:new_app/widgets/bottom_navigator.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounteProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/': (context) => const LoginPage(),
        'layout': (context) => const LayoutDemo(),
        'pageDemo': (context) => const PageDemo(),
        'navigator': (context) => const BottomNavigatorViwe(),
        'list': (context) => const ListViewDemo(),
        'grid': (context) => const GridViewDemo(),
        'dialog': (context) => const AlertDialogDemo(),
        'table': (context) => const TableDemo(),
        'card': (context) => const CardDemo(),
        'perf': (context) => const PerformanceDemo(),
        'provider': (context) => const ProviderDemo(),
        'dio': (context) => const DioDemo(),
      },
      initialRoute: 'dio',
      // 路由拦截
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case 'menu':
            return MaterialPageRoute(
              builder: (context) {
                return const MenuPage();
              },
              settings: settings,
            );
          default:
            break;
        }
      },
    );
  }
}

// 基础组件
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New App'),
        elevation: 10,
        centerTitle: true,
      ),
      body: const CountPage(),
    );
  }
}

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // lesson_01
        Text('$counter'),
        ElevatedButton(
          child: const Text('点击'),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
        // lesson_02
        const TextDemo(),
        // lesson_03
        const ButtonDemo(),
        // lesson_04
        const ImageIconDemo(),
        // lesson_05
        const CheckSwitchDome(),
        // lesson_06
        const LinearProgressDemo(),
        // lesson_07
        const ClickDemo(),
        // lesson_08
        const LoginFormDemo(),
      ],
    );
  }
}
