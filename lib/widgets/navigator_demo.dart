/*
 * @Author: Bryce
 * @Date: 2022-07-20 17:27:37
 * @LastEditTime: 2022-07-20 17:49:22
 * @LastEditors: Bryce
 * @Description: （登录页面）——路由练习
 */
import 'package:flutter/material.dart';

// 登录页面
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return MenuPage();
                },
                settings: RouteSettings(
                  name: 'menu',
                  arguments: '',
                ),
                maintainState: false,
                fullscreenDialog: false,
              ),
            );
          }),
          child: Text('登录'),
        ),
      ),
    );
  }
}

// 菜单页面
class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('菜单'),
        centerTitle: true,
      ),
    );
  }
}
