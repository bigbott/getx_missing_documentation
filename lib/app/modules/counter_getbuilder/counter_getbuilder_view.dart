import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'counter_getbuilder_controller.dart';

class CounterGetbuilderView extends GetView<CounterGetbuilderController>{
  const CounterGetbuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterGetbuilderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<CounterGetbuilderController>(
              builder: (ctrl) => Text(ctrl.read().toString()),
            ),
            SizedBox(
              height: 40,
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