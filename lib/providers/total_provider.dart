import 'package:flutter/material.dart';

class TotalProvider extends ChangeNotifier {
  int _selectedIndexFromNav = 1;
  int get selectedNavIdx => _selectedIndexFromNav;

  void toggleNavIndex(int idx) {
    _selectedIndexFromNav = idx;
    notifyListeners();
  }
}
