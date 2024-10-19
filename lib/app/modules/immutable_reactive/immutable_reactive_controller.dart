import 'package:get/get.dart';
import 'package:getx_missing_documentation/app/data/immutable_user.dart';

class ImmutableReactiveController extends GetxController {
  var _state = ImmutableUser(name: 'John', age: 45).obs;

  ImmutableUser read() {
    return _state.value;
  }

  void change(ImmutableUser val) {
    _state.value  =  val;
   // _state.refresh();
  }
}