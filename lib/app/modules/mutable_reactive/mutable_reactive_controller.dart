import 'package:get/get.dart';
import 'package:getx_missing_documentation/app/data/mutable_user.dart';

class MutableReactiveController extends GetxController {
  var _state = MutableUser(name: 'John', age: 45).obs;

  MutableUser read() {
    return _state.value;
  }

  void change(MutableUser val) {
    _state.value  =  val;
    _state.refresh();
  }
}
