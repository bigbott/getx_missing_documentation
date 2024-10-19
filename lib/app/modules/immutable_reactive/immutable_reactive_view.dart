import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'immutable_reactive_controller.dart';

class ImmutableReactiveView extends GetView<ImmutableReactiveController> {
  const ImmutableReactiveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive immutable'),
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
                    .copyWith(name: "Jim", age: controller.read().age + 1);
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
