import 'package:get/get.dart';

import 'counter_reactive_getx_controller.dart';

class CounterReactiveGetxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterReactiveGetxController>(
      () => CounterReactiveGetxController(),
    );
  }
}
