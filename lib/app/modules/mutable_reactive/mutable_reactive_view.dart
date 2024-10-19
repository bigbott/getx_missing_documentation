import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'mutable_reactive_controller.dart';

class MutableReactiveView extends GetView<MutableReactiveController> {
  const MutableReactiveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive mutable'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(controller.read().name),
                    SizedBox(height: 20),
                    Text(controller.read().age.toString()),
                  ],
                )
              ),
            
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                var state = controller
                    .read()
                    .changeWith(name: "Jim", age: controller.read().age + 1);
                controller.change(state);
              },
              child: Text(
                'Increment аgе',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
