import 'package:flutter/material.dart';

import 'package:get/get.dart';


class CounterReactiveViewNoController extends StatelessWidget {
  CounterReactiveViewNoController({super.key});
  final _state = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterReactiveView no controller'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text(
                _state.value.toString(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _state.value++;
              },
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
