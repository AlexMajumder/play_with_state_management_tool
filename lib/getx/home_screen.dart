import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preparation_get_x/getx/setting_screen.dart';
import 'counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
          child: GetBuilder<CounterController>(builder: (counterController) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counterController.counter}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const SettingScreen(),
                //     ));
                //Get.to(() => const SettingScreen());
                //Navigator.pushNamed(context, SettingScreen.name);
                Get.toNamed(SettingScreen.name);
              },
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5)),
              child: const Text(
                'Setting',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.showSnackbar(const GetSnackBar(
                    title: 'Title of snackBar',
                    message: 'Message of the snackBar',
                    duration: Duration(seconds: 3),
                    snackPosition: SnackPosition.TOP,
                  ));
                },
                child: const Text('Show snackBar'))
          ],
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // void _onTapAddButton() {
  //   _counter++;
  // }
}
