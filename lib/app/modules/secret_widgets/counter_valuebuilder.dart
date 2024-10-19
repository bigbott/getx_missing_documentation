import 'package:flutter/material.dart';
import 'package:get/get.dart';


///doesn't work throws exception 
class CounterValueBuilderView extends StatelessWidget {
  const CounterValueBuilderView({super.key});

  void dispose() {
    //dispose resources here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterGetbuilderView'),
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
