/*
 * @Author: Bryce
 * @Date: 2022-07-25 16:35:00
 * @LastEditTime: 2022-07-25 17:28:02
 * @LastEditors: Bryce
 * @Description: dio网络请求
 */

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  State<DioDemo> createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  Dio _dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dio.options.baseUrl = 'https://zxw.td0f7.cn:8083/';
    _dio.options.connectTimeout = 60000;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _httpGet,
              child: const Text('Get Request'),
            ),
          ),
        ],
      ),
    );
  }

  void _httpGet() async {
    var result = await _dio.get('/dio/dio/test',
        queryParameters: {'id': 1},
        options: Options(headers: {'token': 'Bar'}));
    print(result);
  }

  void _try() async {
    try {
      print('object');
      throw 'Error';
    } catch (e) {
      print(e.toString());
    }
  }
}
