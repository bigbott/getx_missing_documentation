import 'package:get/get.dart';

class CounterReactiveGetxController extends GetxController {
  RxInt count1 = 0.obs;

  int read() {
    return count1.value;
  }

  void increment() {
    count1.value++;
  }

  Worker? ever_;
  Worker? once_;
  Worker? debounce_;
  Worker? interval_;

  @override
  void onInit() {
    super.onInit();

    /// Called every time `count1` changes.
    ever_ = ever(count1, (_) => print("ever: count1 has been changed to $_"));

    /// Called only first time the variable $_ is changed
    once_ = once(count1, (_) => print("once: count1 has been changed to $_"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce_ = debounce(
        count1, (_) => print("debouce: count1 has been changed to $_"),
        time: Duration(seconds: 1));

    /// Ignore all changes within 1 second.
    interval_ = interval(
        count1, (_) => print("interval count1 has been changed to $_"),
        time: Duration(seconds: 1));
  }

  @override
  void onClose() {
    ever_!.dispose();
    once_!.dispose();
    debounce_!.dispose();
    interval_!.dispose();
  }
}
