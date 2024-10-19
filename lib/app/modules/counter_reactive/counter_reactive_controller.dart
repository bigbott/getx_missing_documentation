import 'package:get/get.dart';

class CounterReactiveController extends GetxController {
  RxInt _state = 0.obs;
   
   int read() {
      return _state.value;
   }

   void increment() {
      _state.value++;
   }
}
