import 'package:get/get.dart';

import 'counter_reactive_controller.dart';

class CounterReactiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterReactiveController>(
      () => CounterReactiveController(),
    );
  }
}
