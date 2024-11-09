import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preparation_get_x/home_screen.dart';

import 'counter_controller.dart';
void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: ControllerBinder(),
      home: const HomeScreen(),
    );
  }
}

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(CounterController());
  }

}
