import 'package:flutter/material.dart';

class navigationprovider extends ChangeNotifier {
  bool _iscolapsed = false;

  bool get iscolapsed => _iscolapsed;

  changescolapse() {
    _iscolapsed = !iscolapsed;
    notifyListeners();
  }
}

class tableticonchanges extends ChangeNotifier {
  bool _istabletcolapsed = true;

  bool get istabletcolapsed => _istabletcolapsed;
  //   void updateCollapseState(bool newValue) {
  //   if (_iscolapsed != newValue) {
  //     _iscolapsed = newValue;
  //     notifyListeners();
  //   }
  // }

  tabletchangescolapse() {
    _istabletcolapsed = !istabletcolapsed;
    notifyListeners();
  }
}
