import 'package:flutter/material.dart';

class ColorsSizersNotifier with ChangeNotifier {
  String _sizes = '';

  String get sizes => _sizes;

  void setSize(String s) {
    if (_sizes == s) {
      // si la taille est la même que celle qui est déjà sélectionnée
      _sizes = ''; // alors on réinitialise la taille
    } else {
      _sizes = s; // sinon on met à jour la taille
    }
    notifyListeners();
  }

  String _colors = '';

  String get colors => _colors;

  void setColor(String c) {
    if (_colors == c) {
      // si la couleur est la même que celle qui est déjà sélectionnée
      _colors = ''; // alors on réinitialise la couleur
    } else {
      _colors = c; // sinon on met à jour la couleur
    }
    notifyListeners();
  }
}
