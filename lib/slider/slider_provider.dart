import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier {
  double _sliderValue = 0.0;

  double get sliderValue => _sliderValue;

  void setSliderValue(double value) {
    _sliderValue = value;
    notifyListeners();
  }
}
