import 'package:flutter/material.dart';
class HomeProviderScreen extends StatefulWidget {
  const HomeProviderScreen({super.key});

  @override
  State<HomeProviderScreen> createState() => _HomeProviderScreenState();
}

class _HomeProviderScreenState extends State<HomeProviderScreen> {

  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      body: Column(
        children: [
          Switch(
            value: isEnable,
            onChanged: (bool value) {
              isEnable = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
