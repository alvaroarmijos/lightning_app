import 'package:flutter/cupertino.dart';

class LightbulbProvider with ChangeNotifier {
  int _brightness = 0;
  bool _power = false;

  int get maxValue => 5;

  int get brightness => power ? (_brightness) : 0;

  int get brightnessPercent => (brightness * 100) ~/ maxValue;

  int get opacity => (brightness + 1) * 100;

  double get blurRadius => 300;

  double get spreadRadius => brightness * 10;

  bool get power => _power;

  set brightness(int value) {
    if (power) {
      _brightness = value;
      notifyListeners();
    }
  }

  set power(bool value) {
    _power = value;
    !power ? _brightness = 0 : _brightness = 1;
    notifyListeners();
  }

  void onChanged(bool? value) {
    power = value ?? false;
  }
}
