import 'package:flutter/foundation.dart';

class CategoryController extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void select(int index) {
    _selectedIndex = index;

    notifyListeners();
  }
}
