/*
 * @Author: Bryce
 * @Date: 2022-07-19 17:08:47
 * @LastEditTime: 2022-07-19 17:20:32
 * @LastEditors: Bryce
 * @Description: image_icon_widget
 */
import 'package:flutter/material.dart';

class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.shopping_bag, color: Colors.cyan),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        Image.network(
          'https://tupian.qqw21.com/article/UploadPic/2012-9/2012928918625.jpg',
          fit: BoxFit.fitWidth,
          scale: 1,
          width: 80,
          height: 80,
          repeat: ImageRepeat.noRepeat,
        )
      ],
    );
  }
}
