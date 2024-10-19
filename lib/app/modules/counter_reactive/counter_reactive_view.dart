import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'counter_reactive_controller.dart';

class CounterReactiveView extends GetView<CounterReactiveController> {
  const CounterReactiveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterReactiveView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Obx(() => Text(
                  controller.read().toString(),
                ),
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
