import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier{

  List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;

  void addItem(int item) {
    _selectedItems.add(item);
    notifyListeners();
  }

  void removeItem(int item) {
    _selectedItems.remove(item);
    notifyListeners();
  }
}