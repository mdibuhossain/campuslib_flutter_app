import 'package:flutter/material.dart';

class TotalProvider extends ChangeNotifier {
  int _selectedIndexFromNav = 0;
  int get selectedNavIdx => _selectedIndexFromNav;

  void toggleNavIndex(int idx) {
    _selectedIndexFromNav = idx;
    notifyListeners();
  }
}
