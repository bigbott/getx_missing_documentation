import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'immutable_simple_controller.dart';

class ImmutableSimpleView extends GetView<ImmutableSimpleController> {
  const ImmutableSimpleView({super.key});
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple immutable'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<ImmutableSimpleController>(
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
