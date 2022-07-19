/*
 * @Author: Bryce
 * @Date: 2022-07-19 16:47:20
 * @LastEditTime: 2022-07-19 17:04:13
 * @LastEditors: Bryce
 * @Description: 按钮widget
 */
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Elevated Btn')),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          onPressed: () {},
          label: const Text('Elevated Icon Btn'),
        ),
        TextButton(onPressed: () {}, child: Text('Text Btn')),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.sailing),
          label: Text('Text Icon Btn'),
        ),
        OutlinedButton(onPressed: () {}, child: Text('OutLined Btn')),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.share),
          label: Text('Outlined Icon Btn'),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.home))
      ],
    );
  }
}
