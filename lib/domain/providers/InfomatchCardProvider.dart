import 'package:flutter/cupertino.dart';

class InfoMatchCardProvider extends ChangeNotifier {
  bool _isDragging = false;
  Offset _position = Offset.zero;

  bool get isDragging => _isDragging;

  Offset get position => _position;

  void startPosition(DragStartDetails details) {
    _isDragging = true;
  }

  void updatePosition(DragUpdateDetails details) {
    _position += details.delta;

    notifyListeners();
  }

  void endPosition(DragEndDetails details) {
    resetPosition();
  }

  void resetPosition() {
    _isDragging = false;
    _position = Offset.zero;

    notifyListeners();
  }
}
