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

  tabletchangescolapse() {
    _istabletcolapsed = !istabletcolapsed;
    notifyListeners();
  }
}
