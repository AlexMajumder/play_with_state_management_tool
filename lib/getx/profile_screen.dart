import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preparation_get_x/getx/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String name = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Navigator.pop(context);
                Get.back(
                  result: 'data'
                );
              },
              child: const Text('Back'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const HomeScreen(),
                //     ),
                //     (e) => false);

                // Get.offAll(
                //   () => const HomeScreen(),
                //   transition: Transition.leftToRight,
                // );
                Get.offAllNamed(HomeScreen.name);
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
