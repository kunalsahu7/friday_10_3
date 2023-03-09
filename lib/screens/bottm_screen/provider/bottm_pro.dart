import 'package:flutter/material.dart';

class bootmprovider extends ChangeNotifier
{
  int i = 0;

  void selctindex(int value)
  {
    i=value;
    notifyListeners();
  }
}