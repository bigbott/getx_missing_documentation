import 'package:get/get.dart';

class CounterGetbuilderController extends GetxController {
  var _state = 0;

  int read() {
    return _state;
  }

  void increment() {
    _state++;
    update();
  }
}
