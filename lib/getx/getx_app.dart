import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'controller_binder.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'setting_screen.dart';
class GetXCounterApp extends StatelessWidget {
  const GetXCounterApp({super.key});

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