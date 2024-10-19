import 'package:get/get.dart';
import 'package:getx_missing_documentation/app/data/immutable_user.dart';

class ImmutableSimpleController extends GetxController {
    var _state = ImmutableUser(name: 'John', age: 45);

  ImmutableUser read() {
    return _state;
  }

  void change(val) {
    _state = val;
    update();
  }
}