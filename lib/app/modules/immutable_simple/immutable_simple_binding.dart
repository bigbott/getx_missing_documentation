import 'package:get/get.dart';

import 'immutable_simple_controller.dart';

class ImmutableSimpleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImmutableSimpleController>(
      () => ImmutableSimpleController(),
    );
  }
}
