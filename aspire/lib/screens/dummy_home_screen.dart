import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/bottom_nav_bar.dart';

class DummyHomeScreen extends ConsumerStatefulWidget {
  const DummyHomeScreen({super.key});

  @override
  ConsumerState<DummyHomeScreen> createState() {
    return _DummyHomeScreenState();
  }
}



class _DummyHomeScreenState extends ConsumerState<DummyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue, // You can customize the color
      ),
      bottomNavigationBar: BottomNavBar(ref: ref,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Adds some vertical space
            ElevatedButton(
              onPressed: () {
                // Add navigation or other logic here
                print('Button pressed!');
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}