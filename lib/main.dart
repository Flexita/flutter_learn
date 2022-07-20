/*
 * @Author: Bryce
 * @Date: 2022-07-19 15:30:06
 * @LastEditTime: 2022-07-20 17:30:46
 * @LastEditors: Bryce
 * @Description: 程序入口
 */
import 'package:flutter/material.dart';
import 'package:new_app/widgets/button_widget.dart';
import 'package:new_app/widgets/check_widget.dart';
import 'package:new_app/widgets/click_demo.dart';
import 'package:new_app/widgets/form_filed_widget.dart';
import 'package:new_app/widgets/image_widget.dart';
import 'package:new_app/widgets/linear_progress_widget.dart';
import 'package:new_app/widgets/navigator_demo.dart';
import 'package:new_app/widgets/text_widget.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
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
