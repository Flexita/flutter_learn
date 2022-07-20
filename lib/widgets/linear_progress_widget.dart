import 'package:flutter/material.dart';

class LinearProgressDemo extends StatelessWidget {
  const LinearProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: 0.6,
            minHeight: 10,
            backgroundColor: Colors.blueGrey,
            color: Colors.red,
            semanticsLabel: 'label',
            semanticsValue: 'value',
          ),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(15),
            child: CircularProgressIndicator(
              value: 0.7,
              strokeWidth: 5,
              backgroundColor: Colors.blueGrey,
              color: Colors.yellow,
              semanticsLabel: 'label',
              semanticsValue: 'value',
            ),
          )
        ],
      ),
    );
  }
}
