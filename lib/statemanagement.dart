import 'package:flutter/material.dart';

class Count extends ChangeNotifier {
  int counter;

  Count({this.counter = 0});

  void increment() {
    counter++;
    notifyListeners();
  }
  void decrement() {
    counter--;
    notifyListeners();
  }
}
