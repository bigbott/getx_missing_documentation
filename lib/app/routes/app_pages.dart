import 'package:get/get.dart';
import 'package:getx_missing_documentation/app/modules/secret_widgets/counter_obxvalue.dart';
import 'package:getx_missing_documentation/app/modules/secret_widgets/counter_valuebuilder.dart';

import '../modules/counter_getbuilder/counter_getbuilder_binding.dart';
import '../modules/counter_getbuilder/counter_getbuilder_view.dart';
import '../modules/counter_reactive/counter_reactive_binding.dart';
import '../modules/counter_reactive/counter_reactive_view.dart';
import '../modules/counter_reactive/counter_reactive_view_no_controller.dart';
import '../modules/counter_reactive_getx/counter_reactive_getx_binding.dart';
import '../modules/counter_reactive_getx/counter_reactive_getx_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/immutable_reactive/immutable_reactive_binding.dart';
import '../modules/immutable_reactive/immutable_reactive_view.dart';
import '../modules/immutable_simple/immutable_simple_binding.dart';
import '../modules/immutable_simple/immutable_simple_view.dart';
import '../modules/mutable_reactive/mutable_reactive_binding.dart';
import '../modules/mutable_reactive/mutable_reactive_view.dart';
import '../modules/mutable_simple/mutable_simple_binding.dart';
import '../modules/mutable_simple/mutable_simple_view.dart';
import '../modules/test/test_binding.dart';
import '../modules/test/test_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER_GETBUILDER,
      page: () => const CounterGetbuilderView(),
      binding: CounterGetbuilderBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER_REACTIVE,
      page: () => const CounterReactiveView(),
      binding: CounterReactiveBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER_REACTIVE_NO_CONTROLLER,
      page: () => CounterReactiveViewNoController(),

      /// binding: CounterReactiveBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER_REACTIVE_GETX,
      page: () => const CounterReactiveGetxView(),
      binding: CounterReactiveGetxBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
    GetPage(
      name: _Paths.MUTABLE_SIMPLE,
      page: () => const MutableSimpleView(),
      binding: MutableSimpleBinding(),
    ),
    GetPage(
      name: _Paths.MUTABLE_REACTIVE,
      page: () => const MutableReactiveView(),
      binding: MutableReactiveBinding(),
    ),
    GetPage(
      name: _Paths.IMMUTABLE_SIMPLE,
      page: () => const ImmutableSimpleView(),
      binding: ImmutableSimpleBinding(),
    ),
    GetPage(
      name: _Paths.IMMUTABLE_REACTIVE,
      page: () => const ImmutableReactiveView(),
      binding: ImmutableReactiveBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER_VALUEBUILDER,
      page: () => const CounterValueBuilderView(),
    ),
    GetPage(
      name: _Paths.COUNTER_OBXVALUE,
      page: () => const CounterObxValueView(),
    ),
  ];
}
