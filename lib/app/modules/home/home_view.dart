import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_missing_documentation/app/routes/app_pages.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.COUNTER_GETBUILDER);
            }, child: Text('Counter app with GetBuilder')),
             ElevatedButton(onPressed: (){
              Get.toNamed(Routes.COUNTER_REACTIVE);
            }, child: Text('Counter app with Obx')),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.COUNTER_REACTIVE_NO_CONTROLLER);
            }, child: Text('Counter app with Obx no controller ')),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.COUNTER_REACTIVE_GETX);
            }, child: Text('Counter app with GetX')),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.MUTABLE_SIMPLE);
            }, child: Text('Simple with mutable composite model')),
              ElevatedButton(onPressed: (){
              Get.toNamed(Routes.MUTABLE_REACTIVE);
            }, child: Text('Reactive with mutable composite model')),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.IMMUTABLE_SIMPLE);
            }, child: Text('Simple with immutable composite model')),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.IMMUTABLE_REACTIVE);
            }, child: Text('Reactive with immutable composite model')),
            // ElevatedButton(onPressed: (){
            //   Get.toNamed(Routes.COUNTER_VALUEBUILDER);
            // }, child: Text('Counter with ValueBuilder')),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.COUNTER_OBXVALUE);
            }, child: Text('Counter with ObxValue')),
          ],
        ),
      ),
    );
  }
}
