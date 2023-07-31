import 'package:flutter/foundation.dart';

class SingleModel extends ChangeNotifier {
  String _some_value = "Pos1";
  get get_some_value => _some_value;

  void setSomeValue() {
    _some_value = _some_value == "Pos1" ? "Pos2" : "Pos1";
    notifyListeners();
  }
}
