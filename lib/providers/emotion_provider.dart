// @Responsable -> Alcántara Chávez Samuel

//Flutter
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmotionProvider extends ChangeNotifier {
  // Attributes
  String _actualEmotion = 'Feliz';
  List<String> emotions = [
    'Feliz',
    'Enamorado',
    'Cansado',
    'Enojado',
  ];

  // Method: Get -> _actualEmotion.
  String get actualEmotion => _actualEmotion;

  // Method: Set -> _actualEmotion.
  set actualEmotion(String actualEmotion) {
    _actualEmotion = actualEmotion;
    notifyListeners();
  }
}
