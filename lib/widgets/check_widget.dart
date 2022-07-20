/*
 * @Author: Bryce
 * @Date: 2022-07-20 09:01:50
 * @LastEditTime: 2022-07-20 09:31:40
 * @LastEditors: Bryce
 * @Description: switch & checkbox widget
 */

import 'package:flutter/material.dart';

class CheckSwitchDome extends StatefulWidget {
  const CheckSwitchDome({Key? key}) : super(key: key);

  @override
  State<CheckSwitchDome> createState() => _CheckSwitchDomeState();
}

class _CheckSwitchDomeState extends State<CheckSwitchDome> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          value: _checked,
          onChanged: (value) {
            setState(() {
              _checked = value!;
            });
          },
          activeColor: Colors.cyan,
          checkColor: Colors.red,
        ),
        Switch(
          value: _checked,
          onChanged: (value) {
            setState(() {
              _checked = value;
            });
          },
          activeColor: Colors.red,
          activeTrackColor: Colors.yellow,
          inactiveThumbColor: Colors.blue,
          inactiveTrackColor: Colors.greenAccent,
        )
      ],
    );
  }
}
