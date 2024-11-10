import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preparation_get_x/home_screen.dart';
import 'package:preparation_get_x/profile_screen.dart';
import 'package:preparation_get_x/setting_screen.dart';

import 'counter_controller.dart';
void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      //home: const HomeScreen(),
      initialRoute: '/', //replaced = home: const HomeScreen(),
      initialBinding: ControllerBinder(),
      routes: {
        HomeScreen.name : (context) => const HomeScreen(),
        ProfileScreen.name : (context) => const ProfileScreen(),
        SettingScreen.name : (context) => const SettingScreen(),
      },
    );
  }
}

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(CounterController());
  }

}
