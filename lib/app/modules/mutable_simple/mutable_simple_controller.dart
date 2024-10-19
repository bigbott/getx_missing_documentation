import 'package:get/get.dart';
import 'package:getx_missing_documentation/app/data/mutable_user.dart';

class MutableSimpleController extends GetxController {
  var _state = MutableUser(name: 'John', age: 45);

  MutableUser read() {
    return _state;
  }

  void change(val) {
    _state = val;
    update();
  }
}
