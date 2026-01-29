import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AURA Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.monitor_heart, size: 80, color: Color(0xFF008080)),
            const SizedBox(height: 16),
            const Text(
              'Welcome to AURA',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                'Foundation is ready! Click below to see the dev menu.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // This shows a simple popup to prove navigation works
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Navigation system is online!')),
                );
              },
              child: const Text('Check Connection'),
            ),
          ],
        ),
      ),
    );
  }
}
