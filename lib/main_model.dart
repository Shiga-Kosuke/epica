
import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String shigaText = 'keshigomu';

  void changeShigaText(){
    shigaText='Kosukeaaa';
    notifyListeners();
  }
}