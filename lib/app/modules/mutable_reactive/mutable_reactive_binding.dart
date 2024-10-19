import 'package:get/get.dart';

import 'mutable_reactive_controller.dart';

class MutableReactiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MutableReactiveController>(
      () => MutableReactiveController(),
    );
  }
}
