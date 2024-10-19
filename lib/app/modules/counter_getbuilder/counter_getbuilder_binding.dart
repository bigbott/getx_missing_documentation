import 'package:get/get.dart';

import 'counter_getbuilder_controller.dart';

class CounterGetbuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterGetbuilderController>(
      () => CounterGetbuilderController(),
    );
  }
}
