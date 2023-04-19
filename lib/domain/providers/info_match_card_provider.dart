import 'package:flutter/material.dart';

class InfoMatchCardProvider extends ChangeNotifier {
  bool _isDragging = false;
  Offset _position = Offset.zero;
  Size _screenSize = Size.zero;
  double _angle = 0;

  bool get isDragging => _isDragging;

  Offset get position => _position;

  double get angle => _angle;

  void setScreenSize(Size screenSize) => _screenSize = screenSize;

  void startPosition(DragStartDetails details) {
    _isDragging = true;
  }

  void updatePosition(DragUpdateDetails details) {
    _position += details.delta;

    final x = _position.dx;
    _angle = 45 * x / _screenSize.width;

    notifyListeners();
  }

  void endPosition(DragEndDetails details) {
    resetPosition();
  }

  void resetPosition() {
    _isDragging = false;
    _angle = 0;
    _position = Offset.zero;

    notifyListeners();
  }
}
