import 'package:flutter/cupertino.dart';

class CounteProvider extends ChangeNotifier {
  int _count = 0;

  get count => _count;

  void add() {
    _count++;
    notifyListeners();
  }
}
