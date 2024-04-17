import 'package:flutter/cupertino.dart';

class TabProvider extends ChangeNotifier{
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;

  set tabIndex(int newIndex){
    _tabIndex = newIndex;
    notifyListeners();
  }
}