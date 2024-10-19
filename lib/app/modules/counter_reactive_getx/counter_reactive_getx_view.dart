import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'counter_reactive_getx_controller.dart';

class CounterReactiveGetxView extends GetView<CounterReactiveGetxController> {
  const CounterReactiveGetxView({super.key});
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterReactiveView with GetX'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           GetX<CounterReactiveGetxController>(
            init: Get.put<CounterReactiveGetxController>(CounterReactiveGetxController()),
            builder: (controller) {
              return Text( '${controller.read()}');
            },
          ),

            ElevatedButton(
              onPressed: controller.increment,
              child: Text(
                'Increment',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
