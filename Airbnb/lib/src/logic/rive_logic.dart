import 'package:flutter/material.dart';


class RiveAnimationModel extends ChangeNotifier {
  bool _isPlaying = false;
  String? _selectedArtboard;
  String? _selectedAnimation;

  bool get isPlaying => _isPlaying;
  String? get selectedArtboard => _selectedArtboard;
  String? get selectedAnimation => _selectedAnimation;

  set isPlaying(bool value) {
    _isPlaying = value;
    notifyListeners();
  }

  set selectedArtboard(String? value) {
    _selectedArtboard = value;
    notifyListeners();
  }

  set selectedAnimation(String? value) {
    _selectedAnimation = value;
    notifyListeners();
  }
}
