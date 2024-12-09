import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final ValueNotifier<int> isSelected = ValueNotifier<int>(0);
  

  void setIsSelected(int value) {
    isSelected.value = value;

    notifyListeners();
  }
}
