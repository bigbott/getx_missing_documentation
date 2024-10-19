import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterObxValueView extends StatelessWidget {
  const CounterObxValueView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter with ObxValue'),
          centerTitle: true,
        ),
        body: Center(
          child: ObxValue(
            (data) => Column(
              children: [
                Text(data.toString()),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () => data++,
                  child: Text(
                    'Increment',
                  ),
                ),
              ],
            ),
            0.obs,
          ),
        ));
  }
}
