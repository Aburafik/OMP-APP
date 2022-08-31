import 'package:flutter/cupertino.dart';

class RoutingProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  nextPage(value) {
    _currentIndex = value;
    notifyListeners();
  }
}
