/*
 * @Author: Bryce
 * @Date: 2022-07-19 16:47:20
 * @LastEditTime: 2022-07-20 08:48:42
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
        ElevatedButton(onPressed: () {}, child: const Text('Elevated Btn')),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          onPressed: () {},
          label: const Text('Elevated Icon Btn'),
        ),
        TextButton(onPressed: () {}, child: const Text('Text Btn')),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.flag),
          label: const Text('Text Icon Btn'),
        ),
        OutlinedButton(onPressed: () {}, child: const Text('OutLined Btn')),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.share),
          label: const Text('Outlined Icon Btn'),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home))
      ],
    );
  }
}
