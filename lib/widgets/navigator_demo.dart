/*
 * @Author: Bryce
 * @Date: 2022-07-20 17:27:37
 * @LastEditTime: 2022-07-21 11:31:26
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
        title: const Text('登录'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: () async {
          //   var res = await Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return const MenuPage(title: 'Menu');
          //       },
          //       settings: const RouteSettings(name: 'menu', arguments: ''),
          //       maintainState: false,
          //       fullscreenDialog: false,
          //     ),
          //   );
          //   print(res);
          // },
          onPressed: () {
            // 组件传参
            // Navigator.of(context)
            //     .push(
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return const MenuPage(); // 组件传参
            //         },
            //         settings: const RouteSettings(
            //           name: 'menu',
            //           arguments: 'dddddd', // 路由传参
            //         ),
            //       ),
            //     )
            //     .then((res) => print(res));
            //————————————————————————————————————————————————————
            // Navigator.of(context)
            //     .pushNamed('menu', arguments: 'Menu')
            //     .then((value) => print('返回值$value'));
            Navigator.of(context)
                .popAndPushNamed('menu', arguments: 'Menu')
                .then((value) => print('返回参数$value'));
          },
          child: const Text('登录'),
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
    dynamic args = ModalRoute.of(context)?.settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text('$args'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop('DingDing');
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text('返回'),
        ),
      ),
    );
  }
}
