import 'package:flutter/material.dart';

class HomeProviderScreen extends StatefulWidget {
  const HomeProviderScreen({super.key});

  @override
  State<HomeProviderScreen> createState() => _HomeProviderScreenState();
}

class _HomeProviderScreenState extends State<HomeProviderScreen> {
  bool isEnable = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(isEnable ? 'Dark Mode on' : 'Dark Mode on'),
                  Switch(
                    value: isEnable,
                    onChanged: (bool value) {
                      isEnable = value;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Text(
                '$count',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(
                          count: count,
                          updateCount: () {
                            count++;
                            setState(() {});
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text('Go to Profile screen'))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

////*****************

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key, required this.count, required this.updateCount});

  int count;
  final VoidCallback updateCount;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Text(
          '${widget.count}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.count++;
          widget.updateCount();
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

////***

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

class counterStateHolder extends InheritedWidget{
  37
}
