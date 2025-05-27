import 'package:flutter/material.dart';
import 'Home_provider_screen.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider App',
      home: HomeProviderScreen(),
    );//
  }
}
