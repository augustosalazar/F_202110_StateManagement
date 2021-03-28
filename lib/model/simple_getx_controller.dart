import 'package:get/state_manager.dart';

class SimpleGetXController extends GetxController {
  var someValue = "Pos1".obs;

  void setValue() {
    someValue.value = someValue.value == "Pos1" ? "Pos2" : "Pos1";
  }
}
