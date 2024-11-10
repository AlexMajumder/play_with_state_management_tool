import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preparation_get_x/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Navigator.pop(context);
                Get.back();
              },
              child: const Text('Setting'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const ProfileScreen()),
                // );
                Get.off(()=> const ProfileScreen());
              },
              child: const Text('Profile'),
            )
          ],
        ),
      ),
    );
  }
}
