import 'package:flutter/material.dart';

class DummyHomeScreen extends StatelessWidget {
  const DummyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue, // You can customize the color
      ),
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