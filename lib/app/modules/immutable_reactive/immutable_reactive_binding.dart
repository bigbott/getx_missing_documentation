import 'package:get/get.dart';

import 'immutable_reactive_controller.dart';

class ImmutableReactiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImmutableReactiveController>(
      () => ImmutableReactiveController(),
    );
  }
}
