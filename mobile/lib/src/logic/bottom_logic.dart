import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}