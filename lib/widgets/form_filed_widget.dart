/*
 * @Author: Bryce
 * @Date: 2022-07-20 09:55:36
 * @LastEditTime: 2022-07-20 17:22:31
 * @LastEditors: Bryce
 * @Description: 输入框表单
 */

import 'package:flutter/material.dart';

class LoginFormDemo extends StatefulWidget {
  const LoginFormDemo({Key? key}) : super(key: key);

  @override
  State<LoginFormDemo> createState() => _LoginFormDemoState();
}

class _LoginFormDemoState extends State<LoginFormDemo> {
  // 表单全局状态（表单校验是否通过）
  GlobalKey _key = GlobalKey<FormState>();

  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  final FocusNode _unameFocusNode = FocusNode();
  final FocusNode _pwdFocusNode = FocusNode();

  FocusScopeNode? _focusScopeNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _unameController.dispose();
    _pwdController.dispose();
    _unameFocusNode.dispose();
    _pwdFocusNode.dispose();
    _focusScopeNode?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      // autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _unameController,
            autofocus: true,
            focusNode: _unameFocusNode,
            onChanged: (v) {
              print('userName $v');
            },
            decoration: const InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person),
            ),
            validator: (v) {
              if (v == null || v.isEmpty) {
                return '请输入用户名';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            onFieldSubmitted: ((value) {
              print('object');
            }),
          ),
          TextFormField(
            controller: _pwdController,
            focusNode: _pwdFocusNode,
            textInputAction: TextInputAction.send,
            onChanged: (v) {
              print('password: $v');
            },
            decoration: const InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码！",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            validator: (v) {
              if (v == null || v.length < 6) {
                return '请输入大于6位的密码！';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if ((_key.currentState as FormState).validate()) {
                // 通过校验
                print((_key.currentState as FormState).validate().toString());
              }

              // 控制焦点
              _focusScopeNode ??= FocusScope.of(context);
              // _focusScopeNode?.requestFocus(_unameFocusNode);
              _focusScopeNode?.unfocus();
            },
            child: Text('Submit'),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
