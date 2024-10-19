import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'mutable_simple_controller.dart';

class MutableSimpleView extends GetView<MutableSimpleController> {
  const MutableSimpleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple mutable'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<MutableSimpleController>(
              builder: (ctrl) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ctrl.read().name),
                    SizedBox(height: 20),
                    Text(ctrl.read().age.toString()),
                  ],
                );
              },
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
