/*
 * @Author: Bryce
 * @Date: 2022-07-19 16:11:06
 * @LastEditTime: 2022-07-19 16:45:42
 * @LastEditors: Bryce
 * @Description: 文本widget
 */
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pinkAccent,
      child: const Text(
        'data text 文本',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          inherit: true,
          color: Colors.cyan,
          fontSize: 20,
          letterSpacing: 1.5,
          overflow: TextOverflow.ellipsis,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
          wordSpacing: 30.0,
          // height: 2,
        ),
        strutStyle: StrutStyle(
          leading: 1.0,
        ),
        textAlign: TextAlign.center,
        maxLines: 1,
      ),
    );
  }
}
