import 'package:get/get.dart';

import 'mutable_simple_controller.dart';

class MutableSimpleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MutableSimpleController>(
      () => MutableSimpleController(),
    );
  }
}
